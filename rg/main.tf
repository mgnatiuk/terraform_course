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

# module "ResourceGroup" {
#   source = "./ResourceGroup"
#   rg_name = "Dostava"
#   rg_location = "West Europe"
# }

module "ResourceGroups" {
  source = "./ResourceGroups"
  resource_groups = [ 
    { name = "rg1", location = "East US" },
    { name = "rg2", location = "West Europe" },
    { name = "rg3", location = "Central US" },
  ]
}