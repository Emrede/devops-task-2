#!/bin/bash

# az login --service-principal -u 1fca0f15-2edc-4b09-8cb9-a9eafcdcaf90 -p LSd8Q~Wij0wl_~926~oNv6KnmfAN.bzDNIUU~cAD --tenant 835b119d-4420-4305-a17e-9372a9a18ca3

RESOURCE_GROUP_NAME=tfstate
STORAGE_ACCOUNT_NAME=tfstatebit50
CONTAINER_NAME=tfstate

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location eastus

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME