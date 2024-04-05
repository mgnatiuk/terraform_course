resource "azurerm_resource_group" "resg" {
  name     = "${lower(var.rg_name)}-rg"
  location = var.rg_location
}