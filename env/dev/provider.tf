terraform {
  required_version = ">= 1.11.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }

  backend "azurerm" {
  resource_group_name   = "Akhil_RG" 
  storage_account_name  =  "akhilestrg1"
<<<<<<< HEAD
  container_name         =   "blob"
=======
  container_name = "blob"
>>>>>>> 52cce2f (Fix duplicate resource group keys and update storage account names)
  key                   =   "prod.terraform.tfstate"

}
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}
