#!/bin/bash

# Creates an Azure KeyVault service
# Requirement:
#   00-set-vars.sh must be executed
# Usage:
#	./deploy-keyvault.sh
#

KeyVaultName="${SH360_APPNAME}"
aksRg="${AKS_RG}"
aksRegion="${AKS_REGION}"

echo "------------------------------------------------------------"
echo "Creating the KeyVault $acrName" in rg $aksRg
echo "------------------------------------------------------------"
az provider register -n Microsoft.KeyVault
az keyvault create --name $KeyVaultName --resource-group $aksRg --location $aksRegion



