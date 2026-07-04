#!/bin/bash
set -e

RG_NAME="rg-devops-lab"
LOCATION="centralindia"
STORAGE_NAME="stdevops$(date +%s)"

echo "Creating Resource Group..."
az group create \
  --name $RG_NAME \
  --location $LOCATION

echo "Creating Storage Account..."
az storage account create \
  --name $STORAGE_NAME \
  --resource-group $RG_NAME \
  --location $LOCATION \
  --sku Standard_LRS

echo "Deployment completed successfully."