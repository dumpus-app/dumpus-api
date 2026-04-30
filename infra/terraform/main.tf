locals {
  name = "${var.name_prefix}-${var.environment}"

  api_fqdn = "${var.api_subdomain}.${var.domain_name}"

  common_tags = {
    Project     = "dumpus-api"
    Environment = var.environment
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_caller_identity" "current" {}
