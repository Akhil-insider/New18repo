variable "resource_groups" {
  description = "Map of Azure resource groups to create."
  type = map(object({
    location = string
    rg_name = string
    tags = map(string)

  }))
}
