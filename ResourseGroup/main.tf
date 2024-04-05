# Define Azure Provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
}

# Define local variables
locals {
  tags = { 
    environment = var.environment,
    owner = var.owner
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    features {}
}

# Create resourse group
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.resource_group_location

  tags = local.tags
}

# Create a Storage Account