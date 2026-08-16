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
