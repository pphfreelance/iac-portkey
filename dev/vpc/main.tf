module "vpc" {
  source = "../../modules/vpc"
  name = var.name
  environment = var.environment
  region = var.region
  vpc_cidr = var.vpc_cidr
  availability_zones  = var.availability_zones
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  enable_nat_gw = var.enable_nat_gw
  enable_vpn_gw = var.enable_nat_gw
  enable_single_nat_gw = var.enable_single_nat_gw
  addon_tags = var.addon_tags
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
output "public_subnets_ids" {
  value = module.vpc.public_subnets
}
output "private_subnet_ids" {
  value = module.vpc.private_subnets
}