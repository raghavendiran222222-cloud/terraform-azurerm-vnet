# Terraform Azure VNet Module

This module is an **opinionated wrapper** around the [Azure Verified Module (AVM) for Virtual Network](https://registry.terraform.io/modules/Azure/avm-res-network-virtualnetwork/azurerm/latest).

## ✅ Features
- Deploys Azure Virtual Network using AVM standards.
- Follows strict naming convention and mandatory tagging policy.
- Provides an example configuration for quick start.

## 🔍 Requirements
- **Terraform:** >= 1.9, < 2.0
- **Providers:** azurerm >= 4.0.0, azapi >= 2.4.0

## 📂 Example Usage
See [examples/basic](examples/basic):

```hcl
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
```

Apply with:
```bash
cd examples/basic
terraform init && terraform apply
```

---
## 📑 Mandatory Tags
- Application, CreationDate (MM/DD/YYYY), DevOwner, BusinessOwner, Environment, CostCenter, DataClassification, BusinessCriticality, Compliance

## 🔒 Security
- No secrets stored in `terraform.tfvars`. Use environment variables or remote backend variable sets.

---
## 🧪 Testing
Run Python tests:
```bash
pip install -r tests/requirements.txt
pytest tests/ -v
```
