provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  client_id = "${var.client_id}"
  client_secret = "${var.client_secret}"
  tenant_id = "${var.tenant_id}" 
}

provider "vsphere" {
  user           = "administrator@vsphere.local"
  password       = "Qwerty123!"
  vsphere_server = "esxvi02.atl.lan"
 
  # If you have a self-signed cert
  allow_unverified_ssl = true
}

variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}