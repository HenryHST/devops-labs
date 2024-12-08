terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.13.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.16.1"
    }
  }
  required_version = ">= 1.10.1"
}

provider "azurerm" {
  features {}
}