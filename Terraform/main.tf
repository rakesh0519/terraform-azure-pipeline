provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "example" {
  name                     = "tfstateexample123" # Change this to a unique name
  resource_group_name      = "test-resourcegroup"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_key_vault" "example" {
  name                        = "example-keyvault-123"
  resource_group_name         = "test-resourcegroup"
  location                    = "East US"
  sku_name                    = "standard"
  tenant_id                   = "48b4641a-04b1-4c42-95c9-757110f1641a"  # Replace with actual tenant ID
}
