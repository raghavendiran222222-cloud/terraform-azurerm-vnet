output "vnet_id" {
  description = "ID of the created Virtual Network"
  value       = module.vnet.id
}

output "vnet_name" {
  description = "Name of the created Virtual Network"
  value       = module.vnet.name
}
