# Create a resource group
resource "azurerm_resource_group" "azy_network" {
  location = "West Europe"
  name = "devresgrp"
}
# Create virtual network and subnet
resource "azurerm_virtual_network" "azy_virtual_network" {
 address_space = ["10.0.0.0/16"] 
 location = "West Europe"
 name = "azy_virtual_network"
 resource_group_name = "${azurerm_resource_group.azy_network.name}"
 dns_servers = ["10.0.0.4", "10.0.0.5"]

 subnet {
     name = "subnet1"
     address_prefix = "10.0.1.0/24"
 }
 subnet {
     name = "subnet2"
     address_prefix = "10.0.2.0/24"
  }
 }
