module "s3-logs" {
  source = "../../modules/s3-logs"
  name = var.name
  environment = var.environment
  region = var.region
  addon_tags = var.addon_tags
}

output "s3_logs_user_key" {
  value = module.s3-logs.s3_logs_user_key
}

output "s3_logs_user_secret" {
  value = module.s3-logs.s3_logs_user_secret
  sensitive = true
}