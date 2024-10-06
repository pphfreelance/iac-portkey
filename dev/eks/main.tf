module "eks" {
    source = "../../modules/eks"
    name = var.name
    environment = var.environment
    region = var.region
    node_group_specs = var.node_group_specs
    iam_admin_group = var.iam_admin_group
    availability_zones = var.availability_zones
    control_plane_subnets = flatten([data.terraform_remote_state.vpc.outputs.private_subnet_ids[*], data.terraform_remote_state.vpc.outputs.public_subnets_ids[*]])
    vpc_cidr = var.vpc_cidr
    vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
    private_subnets = data.terraform_remote_state.vpc.outputs.private_subnet_ids
    public_subnets = data.terraform_remote_state.vpc.outputs.public_subnets_ids
    k8s_version = var.k8s_version
    addon_tags = var.addon_tags
}