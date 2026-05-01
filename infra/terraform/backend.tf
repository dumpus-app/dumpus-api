# Rename to backend.tf and fill in to use a remote state.
# Bootstrap the bucket + lock table once with the AWS CLI before running terraform init.

terraform {
  backend "s3" {
    bucket         = "dumpus-tfstate"
    key            = "api/prod/terraform.tfstate"
    region         = "eu-west-3"
    dynamodb_table = "dumpus-tfstate-lock"
    encrypt        = true
  }
}
