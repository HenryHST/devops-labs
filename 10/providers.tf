terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.21.1"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.17.0"
    }
  }
  required_version = ">= 1.11.1"
}

provider "azurerm" {
  features {}
}