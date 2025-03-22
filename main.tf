terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
data "azurerm_resorce_group""rg"{
    name="Rg-shobitha"
    
}
resource "azurerum_storage_account" "namesc" {
    name=var.azurerum_storage_account
    resource_group_name=data.azurerm_resorce_group.rg.name
    location=var.location
    account_tier="standard"
    account_replication_type="LRS"

}
hlo

