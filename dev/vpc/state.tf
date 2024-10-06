terraform {
  backend "s3"{
    key = "dev/vpc.tfstate"
    bucket = "${local.backend_name}-state"
  }
}

