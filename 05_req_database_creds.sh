#!/bin/sh
set -o xtrace

export VAULT_ADDR=http://localhost:8200

export VAULT_TOKEN=root
export VAULT_NAMESPACE=


# create apps policy, apps-policy.hcl
echo 'path "database/creds/readonly" {
        capabilities = [ "read" ]
      }' > readonly.sql

vault policy write apps apps-policy.hcl

# Create token with new apps policy
vault token create -policy="apps"


Try to read creds from vault token
# VAULT_TOKEN=$TOKEN vault read database/creds/readonly
