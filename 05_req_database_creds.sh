#!/bin/sh
set -o xtrace

export VAULT_ADDR=http://localhost:8200

# First create an apps policy, and generate a token so that you can authenticate as an apps persona


vault policy write apps apps-policy.hcl

# Create token with new apps policy
vault token create -policy="apps"


# Try to read creds from vault token
# VAULT_TOKEN=$TOKEN vault read database/creds/readonly
