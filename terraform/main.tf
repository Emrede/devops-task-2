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

# # Create an Nginx pod
# resource "kubernetes_pod" "nginx" {
#   metadata {
#     name = "terraform-example"
#     labels = {
#       app = "nginx"
#     }
#   }

#   spec {
#     container {
#       image = "nginx:1.23.2"
#       name  = "example"
#     }
#   }
# }

# # Create a service
# resource "kubernetes_service" "nginx" {
#   metadata {
#     name = "terraform-example"
#   }
#   spec {
#     selector = {
#       app = kubernetes_pod.nginx.metadata.0.labels.app
#     }
#     port {
#       port = 80
#     }

#     type = "NodePort"
#   }

#   depends_on = [
#     kubernetes_pod.nginx
#   ]
# }
