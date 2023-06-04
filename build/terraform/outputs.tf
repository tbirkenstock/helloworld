output "public_subnet_cidrs" {
  value = module.subnets.public_subnet_cidrs
}

output "private_subnet_cidrs" {
  value = module.subnets.private_subnet_cidrs
}

output "vpc_cidr" {
  value = module.vpc.vpc_cidr_block
}

output "registry_id" {
  value       = module.ecr.registry_id
  description = "Registry ID"
}

output "registry_url" {
  value       = module.ecr.repository_url
  description = "Repository URL"
}

output "repository_name" {
  value       = module.ecr.repository_name
  description = "Registry name"
}