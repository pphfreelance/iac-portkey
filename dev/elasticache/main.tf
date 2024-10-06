module "elasticache" {
    source = "../../modules/elasticache"
    name = var.name
    environment = var.environment
    region = var.region
    availability_zones = var.availability_zones
    elasticache_node_type = var.elasticache_node_type
    vpc_cidr = var.vpc_cidr
    addon_tags = var.addon_tags
    vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
    private_subnets = data.terraform_remote_state.vpc.outputs.private_subnet_ids
}

output "cluster_address" {
  value = module.elasticache.endpoints[*].address
}