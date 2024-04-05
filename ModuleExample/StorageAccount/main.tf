terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

# Use random resource for generate random values
resource "random_string" "random" {
  length = 6
  special = false
  upper = false
}

resource "azurerm_storage_account" "strgacc" {
  name                     = "${lower(var.base_name)}${random_string.random.result}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type
}