vnet_name         = "vnet-eng-app-dev-eus2-001"
location          = "eastus2"
resource_group_id = "/subscriptions/xxxx/resourceGroups/rg-eng-terraform-dev-eus2-001"
address_space     = ["10.0.0.0/16"]

subnets = {
  snet-app = {
    name           = "snet-app"
    address_prefix = "10.0.1.0/24"
  }
  snet-web = {
    name           = "snet-web"
    address_prefix = "10.0.2.0/24"
  }
}

tags = {
  Application        = "MyApp"
  CreationDate       = "05/07/2026"
  DevOwner           = "raghavendirann@presidio.com"
  BusinessOwner      = "owner@example.com"
  Environment        = "dev"
  CostCenter         = "CC001"
  DataClassification = "Unrestricted"
  BusinessCriticality= "Medium"
  Compliance         = "CIS"
}
