resource_groups = {

rg1 = {
   rg_name = "rg-network"
   location = "eastus"
   tags ={
    owner = "devops"
    Env = "dev"
   }
}

rg2 = {
   rg_name = "rg-app"
   location = "eastus"
   tags ={
    owner = "devops"
    Env = "dev"
   }
}

}



storage_accounts = {
  akhilstg001dev = {
    resource_group_name      = "rg-network"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    account_kind             = "StorageV2"
    min_tls_version          = "TLS1_2"
  }
  akhilstg002dev = {
    resource_group_name      = "rg-app"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    account_kind             = "StorageV2"
    min_tls_version          = "TLS1_2"
  }
}
