resource "azurerm_resource_group" "resg" {
  for_each = { for rg in var.resource_groups : rg.name => rg }
  name     = "${lower(each.value.name)}-rg"
  location = each.value.location
}