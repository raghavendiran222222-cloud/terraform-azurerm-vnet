module "vnet" {
  source        = "git::https://github.com/raghavendiran222222-cloud/terraform-azurerm-vnet.git//?ref=v1.0.0"
  
  name          = var.vnet_name
  location      = var.location
  parent_id     = var.resource_group_id
  address_space = var.address_space
  subnets       = var.subnets

  tags = var.tags
}
