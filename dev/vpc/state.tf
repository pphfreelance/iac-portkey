terraform {
  backend "s3"{
    key = "dev/vpc.tfstate"
    bucket = "${local.backend_name}-state"
    assume_role {
      role_arn = var.role_arn
    }
  }
}

