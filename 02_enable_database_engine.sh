#!/bin/sh
set -o xtrace



export VAULT_ADDR=http://localhost:8200


#login into Vault 
vault login $VAULT_TOKEN

#check the status of Vault server
vault status

#Enable vault secrets database

vault secrets enable database
