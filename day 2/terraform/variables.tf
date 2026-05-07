variable "location" {
  description = "location of resources"

  type    = string
  default = "eastus"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "resource_group" {
  description = "name of the resource group"

  type    = string
  default = "mystorageacct77"
}

variable "storage_account" {
  description = "name of the storage account"

  type    = string
  default = "my-hardcoded-storage-account-77"
}

variable "network_interface_card" {
  description = "name of the network interface card"

  type    = string
  default = "my-hardcoded-nic"
}

variable "public_ip" {
  description = "name of the public IP address"

  type    = string
  default = "my-hardcoded-public-ip"
}

data "azurerm_subscription" "primary" {}

variable "subnet" {
  description = "name of the subnet"

  type    = string
  default = "my-hardcoded-subnet"
}

variable "virtual_network" {
  description = "name of the virtual network"

  type    = string
  default = "my-hardcoded-vnet"
}

variable "address_space" {
  type = list(string)
}

variable "subnet_prefixes" {
  type = list(string)
}
