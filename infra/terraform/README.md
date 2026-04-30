# dumpus-api — AWS deployment (Lambda)

Lambda + SQS + RDS Postgres + API Gateway HTTP API. No always-on workers.

## What it provisions

| Component        | AWS service              | Notes                                          |
| ---------------- | ------------------------ | ---------------------------------------------- |
| Public API       | API Gateway HTTP API     | Custom domain `api.dumpus.app`                 |
| API runtime      | Lambda (container image) | Flask via apig-wsgi, 30s timeout               |
| Worker           | Lambda (container image) | SQS-triggered, 15min timeout, 5GB /tmp         |
| Job queue        | SQS + DLQ                | One retry then DLQ                             |
| Database         | RDS Postgres 17          | Private, encrypted, 7-day backups              |
| NAT for outbound | fck-nat on t4g.nano      | ~$3/mo replacement for $35/mo NAT Gateway      |
| Secrets          | Secrets Manager          | Audit copy; Lambdas read values from env       |
| Logs             | CloudWatch               | 30-day retention                               |
| CI/CD            | GitHub OIDC role         | No long-lived AWS keys                         |

## Cost estimate (3-4 packages/day)

| Item                                | $/mo |
| ----------------------------------- | ---- |
| RDS db.t4g.micro (20GB)             | 15   |
| fck-nat t4g.nano + EIP              | 3    |
| Lambda + API Gateway + SQS          | <2   |
| Secrets, logs, ECR, data            | 2    |
| **Total**                           | **~22** |

The DB is the floor. Move to Aurora Serverless v2 (min 0 ACU) or self-hosted Postgres on the fck-nat box later if needed.

## Bootstrap

1. **Hosted zone**: `dumpus.app` must already be a public hosted zone in this AWS account.
2. **State backend** (optional but recommended): create an S3 bucket + DynamoDB lock table, then `cp backend.tf.example backend.tf` and edit.
3. **First apply**:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   # fill discord_secret, github_repository
   terraform init
   terraform apply
   ```
   The first apply will leave the Lambdas pointing at the `:bootstrap` tag, which doesn't exist yet — that's fine, Lambda creates the function but won't be invokable. Push your first image:
   ```bash
   aws ecr get-login-password --region eu-west-3 \
     | docker login --username AWS --password-stdin "$(terraform output -raw ecr_repository_url | cut -d/ -f1)"
   docker buildx build --platform linux/amd64 -f Dockerfile.lambda \
     -t "$(terraform output -raw ecr_repository_url):bootstrap" --push .
   aws lambda update-function-code --function-name "$(terraform output -raw api_lambda_name)"    --image-uri "$(terraform output -raw ecr_repository_url):bootstrap"
   aws lambda update-function-code --function-name "$(terraform output -raw worker_lambda_name)" --image-uri "$(terraform output -raw ecr_repository_url):bootstrap"
   ```
   After that, all deploys go through CI.

## Deploy flow

`terraform apply` is for **infrastructure**. Application deploys go through GitHub Actions:

1. Push to `main` → `.github/workflows/deploy.yml` runs.
2. It builds the Lambda container, pushes it to ECR with the git SHA as the tag.
3. It calls `lambda:UpdateFunctionCode` for both functions.

Both `aws_lambda_function` resources have `lifecycle.ignore_changes = [image_uri]` so `terraform apply` doesn't roll back what CI deployed.

## Required GitHub secrets

| Secret               | Value                                                  |
| -------------------- | ------------------------------------------------------ |
| `AWS_DEPLOY_ROLE_ARN`| `terraform output -raw github_deploy_role_arn`         |

## Day-to-day

```bash
# tail the API logs
aws logs tail /aws/lambda/dumpus-prod-api --follow

# tail the worker logs
aws logs tail /aws/lambda/dumpus-prod-worker --follow

# inspect failed packages
aws sqs receive-message --queue-url "$(terraform output -raw sqs_dlq_url)" --max-number-of-messages 10

# replay a failed package
aws sqs send-message --queue-url "$(terraform output -raw sqs_queue_url)" --message-body '...'
```

## Things to watch

- **Cold start**: ~3-5s on the API Lambda (pandas/nltk imports). For the user-facing async submit/poll flow this is invisible. If a synchronous request needs to be sub-second, switch to provisioned concurrency on the API function (~$5/mo for 1 unit).
- **/tmp size**: worker has 5GB by default. If a user's Discord export exceeds that, the download fails with a disk-full error — bump `worker_ephemeral_storage_mb` (max 10240).
- **Worker timeout**: 900s. Big exports near that limit will fail. The DLQ catches them; check `sqs_dlq_url`.
- **fck-nat single point**: it's one EC2 instance. If it goes down, the Lambdas can't reach Discord. Auto-recovery is on but expect a few minutes of lost throughput on rare instance failures. Move to a managed NAT Gateway if uptime matters more than $32/mo.
