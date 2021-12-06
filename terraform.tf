terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.77.0"
    }
  }

  backend "remote" {
    organization = "robstr"

    workspaces {
      name = "enterprise-scale"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azurerm" {
  alias           = "management"
  subscription_id = var.management_subscription_id
  features {}
}
provider "azurerm" {
  alias           = "connectivity"
  subscription_id = var.connectivity_subscription_id
  features {}
}
provider "azurerm" {
  alias           = "production"
  subscription_id = var.production_subscription_id
  features {}
}
