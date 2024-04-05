output "all_rg_names" {
  value = [for rg_name in azurerm_resource_group.resg : rg_name.name]
}