# === Azure Virtual Network ===
module "this" {
  source  = "Azure/avm-res-network-virtualnetwork/azurerm"
  version = "0.17.1"

  name          = local.vnet_name
  location      = var.location
  parent_id     = var.resource_group_id
  address_space = var.address_space
  subnets       = local.subnet_map

  tags = var.tags
}