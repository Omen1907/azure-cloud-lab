terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstateunique12345"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}
