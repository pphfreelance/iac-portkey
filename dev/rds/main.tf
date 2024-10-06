module "rds" {
  source = "../../modules/rds"
  name = var.name
  region = var.region
  availability_zones = var.availability_zones
  environment = var.environment
  rds_instance_names = var.rds_instance_names
  rds_instance_size = var.rds_instance_size
  db_name = var.db_name
  db_user = var.db_user
  db_password = var.db_password
  vpc_cidr = var.vpc_cidr
  addon_tags = var.addon_tags
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  private_subnet_ids = data.terraform_remote_state.vpc.outputs.private_subnet_ids
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}