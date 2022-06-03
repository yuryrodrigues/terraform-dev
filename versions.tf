# Configure the Azure provider
terraform {
  required_version = ">= 1.1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  /*cloud {
    organization  = "yury-dev"
    workspaces {
      name  = "terraform-lab"
    }
  }*/
}