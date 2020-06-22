#!/bin/sh
set -o xtrace
export VAULT_ADDR=http://localhost:8200

#export VAULT_TOKEN=root

#vault login $VAULT_TOKEN

# Generate new token
VAULT_TOKEN=$VAULT_TOKEN vault read database/creds/readonly

# podman exec -it postgres bash

# /# psql -U root

## Check if user name generated exists
# \du


# Exit 
# exit




