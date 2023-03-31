# devops-task-2
adesso DevOps Task 2

![alt text](adesso-devops-task-diagram.png)

1. Install Docker Desktop first, then enable Kubernetes from Settings
2. You need an Azure or similar Cloud service account to create a remote storage.
3. Log on Azure with ```az login``` command if necessary
4. Edit and run ```create-remote-storage.sh``` to create a storage for Terraform backend. You should enter your tenant_id, subscription_id and secret_text variables before run
5. After creating storage, terraform backend config variables should be configured in main.tf backend "azurerm" block with your backend storage values