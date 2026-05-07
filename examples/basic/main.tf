module "vnet" {
  source        = "Azure/avm-res-network-virtualnetwork/azurerm"
  version       = "0.17.1"

  name          = var.vnet_name
  location      = var.location
  parent_id     = var.resource_group_id
  address_space = var.address_space
  subnets       = var.subnets

  tags = var.tags
}
