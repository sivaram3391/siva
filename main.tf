terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.47.0"
    }
  }
}

provider "azurerm" {
  features{}
}
resource "azurerm_resource_group" "kanewilliamson" {
  name     = "kanewilliamson"
  location = "central india"
}
resource "azurerm_storage_account" "abcde" {
  name                     = "sivaramanstorageaccount"
  resource_group_name      = azurerm_resource_group.kanewilliamson.name
  location                 = azurerm_resource_group.kanewilliamson.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
resource "azurerm_storage_container" "data" {
  name                  = "data"
  storage_account_name  = azurerm_storage_account.abcde.name
  container_access_type = "blob"
  }
  resource "azurerm_storage_blob" "blob" {
  name                   = "main.tf"
  storage_account_name   = azurerm_storage_account.abcde.name
  storage_container_name = azurerm_storage_container.data.name
  type                   = "Block"
  source                 = "main.tf"
  }