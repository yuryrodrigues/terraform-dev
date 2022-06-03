provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "eastus2"
  
  tags  = {
      Environment = "TF v2"
      Team        = config.tag_rg 
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "myTFVnet-v2"
  address_space       = ["10.0.0.0/16"]
  location            = "eastus2"
  resource_group_name = azurerm_resource_group.rg.name
}