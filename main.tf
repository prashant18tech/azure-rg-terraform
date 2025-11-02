terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

  # Backend for state storage (optional)
  backend "azurerm" {
    resource_group_name  = "pk_devops_rg"
    storage_account_name = "tfstorgaedemo"
    container_name       = "tfstate"
    key                  = "r7OV3SnBZiD9wWL7jx5MJfW99OlbRzynZT/FdqyBMP+0tKk89Pdy2fVxov3PEUtwobiZ12UQ6DMG+ASt4z/5JA=="
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}
