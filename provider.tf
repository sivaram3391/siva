terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.10.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "c1f5d20d-123c-4899-8141-128dd3704700"
  tenant_id = "8eed517b-da64-44a1-8624-83636749294a"
  client_id = "95ba5ee7-a6e7-4b76-b906-009d5fec44da"
  client_secret = "hXp8Q~QtFHvM71JHzv~Mq4GaN7acr9pUOld9ydgW"
  features {}  
}