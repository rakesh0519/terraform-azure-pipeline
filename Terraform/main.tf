provider "azurerm" {
  features {}
}

terraform {
  backend "local" {}  # This stores the Terraform state locally
}

resource "azurerm_key_vault" "example" {
  name                = "my-keyvault-terraform"
  location            = "East US"
  resource_group_name = var.resource_group_name
  sku_name            = "standard"
}
