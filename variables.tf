# ─── Required Inputs ───
variable "vnet_name" {
  type        = string
  description = "Name of the virtual network."
}

variable "location" {
  type        = string
  description = "Azure region for the VNet."
}

variable "resource_group_id" {
  type        = string
  description = "Resource group ID where VNet resides."
}

variable "address_space" {
  type        = list(string)
  description = "List of address spaces for VNet."
}

variable "subnets" {
  type        = map(object({
    name             = string
    address_prefixes = list(string)
  }))
  description = "Map of subnets configuration."
}

# ─── Tags ───
variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources (all 9 mandatory)."
}