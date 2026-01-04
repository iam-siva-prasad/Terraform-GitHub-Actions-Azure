

terraform {
  required_version = ">= 1.4.6"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "1-3f818d04-playground-sandbox"
    storage_account_name = "sivaprasadxyz"
    container_name       = "jil"
    key                  = "siva.terraform.tfstate"
    use_azuread_auth     = true
  }
}


provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}

