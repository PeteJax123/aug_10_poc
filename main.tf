terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "afdsdfsdf"
  }
}

provider "azurerm" {
  features{}
  
  subscription_id = var.ARM_SUBSCRIPTION_ID
  tenant_id = var.ARM_TENANT_ID
  client_id = var.ARM_CLIENT_ID
  client_secret = var.ARM_CLIENT_SECRET
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = var.rg_name
  location = var.rg_location

  tags = {
    environment = "Production"
  }
}
