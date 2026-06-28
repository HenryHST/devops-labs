terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.79.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 3.2.0"
    }
  }
  required_version = ">= 1.14.6"
}

provider "azurerm" {
  features {}
}