variable "resource_group_name" {
  description = "The name of the existing Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "eastus"
}

variable "key_vault_name" {
  description = "The name of the Key Vault"
  type        = string
}
