resource "azurerm_resource_group" "rg" {
  name     = var.resource_group
  location = var.location
  tags     = local.default_tags
}

module "policy" {
  source = "../modules/policy"

  scope = azurerm_resource_group.rg.id
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = local.default_tags
}

module "network" {
  source = "../modules/network"

  virtual_network     = var.virtual_network
  subnet              = var.subnet
  location            = var.location
  resource_group_name = var.resource_group
  address_space       = var.address_space
  subnet_prefixes     = var.subnet_prefixes

  default_tags = local.default_tags
}

resource "azurerm_public_ip" "pip" {
  name                = var.public_ip
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"
  tags                = local.default_tags
}

resource "azurerm_network_interface" "nic" {
  name                = var.network_interface_card
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tags                = local.default_tags

  ip_configuration {
    name                          = "internal"
    subnet_id                     = module.network.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip.id
  }
}

