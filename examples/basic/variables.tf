variable "vnet_name" {
  type        = string
  description = "Name of the Virtual Network"
}

variable "location" {
  type        = string
  description = "Azure region where VNet will be deployed"
}

variable "resource_group_id" {
  type        = string
  description = "Resource Group ID where the VNet should be created"
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the Virtual Network"
}

variable "subnets" {
  type = map(object({
    name           = string
    address_prefix = string
  }))
  description = "Map of subnet configurations"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be applied to the resources"
}
