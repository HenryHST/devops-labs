terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 3.0.2"
    }
  }
  required_version = ">= 1.13.4"
}

provider "azurerm" {
  features {}
}