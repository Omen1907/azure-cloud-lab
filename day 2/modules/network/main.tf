resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.default_tags
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_prefixes
}
