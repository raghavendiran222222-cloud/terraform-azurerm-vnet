# terraform-azurerm-vnet

## Summary
Wrapper around **Azure Verified Module (AVM)** for Virtual Network (`Azure/avm-res-network-virtualnetwork/azurerm`). Provides standardized naming, tagging, and opinionated defaults.

---

## Requirements
```
Terraform >= 1.5.0
Provider azurerm >= 3.85.0
```

---

## Resources
- Azure Verified Virtual Network Module

---

## Inputs
| Name | Type | Description |
|------|------|-------------|
| vnet_name | string | Name of the VNet |
| location | string | Azure region |
| resource_group_id | string | Resource group ID |
| address_space | list(string) | Address spaces |
| subnets | map(object) | Subnets config |
| tags | map(string) | All 9 mandatory tags |

---

## Outputs
| Name | Description |
|------|-------------|
| vnet_id | VNet resource ID |
| vnet_name | VNet name |
| subnet_ids | Map of subnet IDs |

---

## Example
```
module "vnet" {
  source              = "../.."
  vnet_name           = "vnet-eng-app-dev-eus2-001"
  location            = "eastus2"
  resource_group_id   = "/subscriptions/<sub>/resourceGroups/rg-eng-app-dev-eus2-001"
  address_space       = ["10.0.0.0/16"]
  subnets = {
    app = { name = "snet-app", address_prefixes = ["10.0.1.0/24"] }
    db  = { name = "snet-db", address_prefixes = ["10.0.2.0/24"] }
  }
  tags = {
    Application = "myapp"
    CreationDate = "05/07/2026"
    DevOwner = "devteam@company.com"
    BusinessOwner = "bizowner@company.com"
    Environment = "dev"
    CostCenter = "CC1234"
    DataClassification = "Unrestricted"
    BusinessCriticality = "Low"
    Compliance = "CIS"
  }
}
```

---

## Maintained By
Presidio IaC Team
