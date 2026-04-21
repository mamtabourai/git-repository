terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.69.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
  subscription_id = "69aaf1e8-4cfa-4d3f-aa59-f2a896045552"
}