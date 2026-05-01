# Non-sensitive tfvars committed to the repo, used by the infra GitHub Actions
# workflow. Sensitive values (discord_secret, diswho_jwt_secret) come in via
# TF_VAR_* env from GitHub secrets — never commit those here.

region      = "eu-west-3"
environment = "prod"

allowed_account_ids = ["436630934006"]

domain_name   = "dumpus.app"
api_subdomain = "api"

github_repository = "dumpus-app/dumpus-api"

image_tag = "bootstrap"

diswho_base_url            = "https://diswho.androz2091.fr"
dl_zip_whitelisted_domains = ""
