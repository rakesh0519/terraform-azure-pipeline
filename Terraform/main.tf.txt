provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_key_vault" "keyvault" {
  name                = var.key_vault_name
  resource_group_name = var.resource_group_name
  location           = var.location
  sku_name           = "standard"
  tenant_id          = data.azurerm_client_config.current.tenant_id
}

data "azurerm_client_config" "current" {}
