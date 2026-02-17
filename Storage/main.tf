terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.1"
    }
  }

}

provider "azurerm" {
  features {}
  subscription_id = "b2817391-2d46-4f90-873a-aa8fc1883c84"
}


resource "azurerm_resource_group" "rg2" {
  name     = "StorageRG"
  location = "West Europe"
}

resource "azurerm_storage_account" "taskboardSA" {
  name                     = "taskboardstorageaccount"
  resource_group_name      = azurerm_resource_group.rg2.name
  location                 = azurerm_resource_group.rg2.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}
resource "azurerm_storage_container" "taskboard" {
  name               = "taskboard"
  storage_account_id = azurerm_storage_account.taskboardSA.id

}


