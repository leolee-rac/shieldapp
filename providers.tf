terraform {
  required_version = ">=1.0"

  required_providers {

    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0"
    }

  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
provider "azurerm" {
  features {}
}
