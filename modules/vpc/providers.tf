provider "aws" {
  region = var.region
  assume_role {
    role_arn = "${var.role_arn}"
  }
}

locals {
  dynamic_tags = {
    ProjectName = var.name
    Environment = var.environment
    Terraform   = "true"
  }
  default_tags = merge(local.dynamic_tags, var.addon_tags)
}