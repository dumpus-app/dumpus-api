terraform {
  backend "s3" {
    bucket         = "dumpus-tfstate"
    key            = "api/prod/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "dumpus-tfstate-lock"
    encrypt        = true
  }
}
