variable "resource_groups" {
  description = "List of resource groups"
  type = list(object({
    name     = string
    location = string
  }))
}
