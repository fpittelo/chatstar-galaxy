# main.tf for Dev

resource "azurerm_resource_group" "rg" {
  name     = "chatstar-galaxy-dev"
  location = "SwitzerlandNorth"
}

resource "azurerm_storage_account" "storage" {
  name                     = "chatstargalaxydev"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "terraform" {
  name                  = "terraformdev"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}