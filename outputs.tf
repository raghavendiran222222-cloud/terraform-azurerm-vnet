output "vnet_id" {
  value       = module.this.id
  description = "The ID of the virtual network."
}

output "vnet_name" {
  value       = module.this.name
  description = "The name of the virtual network."
}

output "subnet_ids" {
  value       = try(module.this.subnets, {})
  description = "Map of subnet IDs."
}