variable "subscription_id" {
  description = "Azure subscription ID."
  type        = string
  default     = "0b8588b0-4a2f-4892-a722-9d457579982d"
}

variable "tenant_id" {
  description = "Azure tenant ID."
  type        = string
  default     = "f5007519-8139-4f24-9b43-9088b6c00e41"
}



variable "resource_groups" {
  description = "Map of Azure resource groups to create."
  type = map(object({
    location = string
    rg_name  = string
    tags     = map(string)

  }))
}

variable "storage_accounts" {
  description = "Map of storage accounts to create."
  type = map(object({
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    account_kind             = optional(string)
    min_tls_version          = optional(string)
  }))
}
