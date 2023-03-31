# devops-task-2
adesso DevOps Task 2

![alt text](devops-task-2-diagram.png)

1. Install Docker Desktop first, then enable Kubernetes from Settings
2. Configure your ```~/.kube/config``` file with your docker-desktop config
2. You need an Azure or similar Cloud service account to create a remote storage for Terraform backend.
3. Edit and run ```create-remote-storage.sh``` to create a storage for Terraform backend. Edit STORAGE_ACCOUNT_NAME and run. It will prompt for ```az login``` command, follow the opened browser window and login
4. You can also run ```az login``` command manually
5. After creating storage, terraform backend config variables should be configured in ```main.tf```. Update ```backend "azurerm"``` block with your backend storage values
