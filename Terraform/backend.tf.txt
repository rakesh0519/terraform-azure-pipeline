terraform {
  backend "azurerm" {
    resource_group_name   = "test-resourcegroup"
    storage_account_name  = "devopsstorage12345"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}
