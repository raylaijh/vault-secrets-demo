#!/bin/sh
set -o xtrace



export VAULT_ADDR=http://localhost:8200

export VAULT_TOKEN=root
export VAULT_NAMESPACE=

#login into Vault 
vault login root

#check the status of Vault server
vault status

#Enable vault secrets database

vault secrets enable database
