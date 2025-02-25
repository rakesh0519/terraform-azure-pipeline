terraform {
  backend "azurerm" {
    resource_group_name   = "test-resourcegroup"
    storage_account_name  = "tfstateexample123"  # Same as in main.tf
    container_name        = "tfstate"
    key                  = "terraform.tfstate"
  }
}
