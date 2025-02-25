provider "azurerm" {
  features {}
}

resource "azurerm_key_vault" "example" {
  name                = "my-keyvault-terraform"
  location            = "East US"
  resource_group_name = var.resource_group_name
  sku_name            = "standard"
  tenant_id           = var.tenant_id
}
