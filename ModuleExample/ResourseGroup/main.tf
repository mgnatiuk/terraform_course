resource "azurerm_resource_group" "rsgroup" {
  name     = "${var.base_name}-rg"
  location = var.location
}