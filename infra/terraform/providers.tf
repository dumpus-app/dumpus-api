provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Project     = "dumpus-api"
      Environment = var.environment
      ManagedBy   = "terraform"
    }
  }
}
