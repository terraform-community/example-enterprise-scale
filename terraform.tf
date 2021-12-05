terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.77.0"
    }
  }

  backend "remote" {
    organization = "demo-azuretf"

    workspaces {
      name = "core-architecture"
    }
  }
}

provider "azurerm" {
  features {}
}
