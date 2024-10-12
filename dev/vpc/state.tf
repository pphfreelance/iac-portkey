terraform {
  backend "s3"{
    key = "dev/vpc.tfstate"
    bucket = "${local.backend_name}-state"
    assume_role = {
      role_arn = "arn:aws:iam::926233248796:role/Admin_Role",
    }
  }
}

