# Global variables
variable "owner" {
  description = "Owner of infrastructure"
  type = string
}

variable "environment" {
  description = "Environment name"
  type = string
  default = "dev"
}

# Resourse group
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default = "my-rg"
}

variable "resource_group_location" {
  description = "Location of the Azure Resource Group"
  type        = string
  default = "West Europe"
}



