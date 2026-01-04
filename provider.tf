
terraform {
  required_version = ">= 1.4.6"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  # }
  # backend "azurerm" {
  #   resource_group_name  = "1-3f818d04-playground-sandbox"
  #   storage_account_name = "sivaprasadxyz"
  #   container_name       = "new"
  #   key                  = "prod.terraform.tfstate"
  # }
}
}

provider "azurerm" {
  features {}
  # If you’re using Service Principal env vars:
  # (Optional — you can remove these if you set ARM_* env vars in the pipeline)
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  # Temporarily disable auto-registration to avoid 403s at init time:
  resource_provider_registrations = "none"
}


