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
  container_name         =   "blob"
  key = "prod.terraform.tfstate"

  key                   =   "prod.terraform.tfstate"

}
} 

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}
