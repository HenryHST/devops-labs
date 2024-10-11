terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.5.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.16.0"
    }
  }
  required_version = ">= 1.9.7"
}

provider "azurerm" {
  features {}
}