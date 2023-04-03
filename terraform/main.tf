terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  # Edit this block according to your backend config before running terraform
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstatebit50" 
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

# Configure Kubernetes provider and connect to the Kubernetes API server
provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "docker-desktop"
}

