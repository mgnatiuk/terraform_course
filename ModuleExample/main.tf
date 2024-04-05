terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.79.0"
    }
  }
}

provider "azurerm" {
    features {}
}

# Variables from variables.tf module ResourseGroup
module "ResourceGroup" {
  source = "./ResourseGroup"
  base_name = "Dostava"
  location = "West Europe"
}

# Variables from variables.tf module StorageAccount
module "StorageAccount" {
  source = "./StorageAccount"
  base_name = "Dostava"
  replication_type = "GRS"
  account_tier = "Standard"
  resource_group_name = module.ResourceGroup.rg_name_out
  location = module.ResourceGroup.rg_location_out
}

