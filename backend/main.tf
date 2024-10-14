module "backend" {
  source = "../modules/backend"
  name = var.name
  environment = var.environment
  region = var.region
}

variable "name" {
  type = string
}
variable "region" {
  type = string
}
variable "environment" {
  type = string
}