#!/bin/sh
set -o xtrace
export VAULT_ADDR=http://localhost:8200

export VAULT_TOKEN=root
export VAULT_NAMESPACE=


# Generate new token
vault read database/creds/readonly

# podman exec -it postgres bash

# /# psql -U root

## Check if user name generated exists
# \du


# Exit 
# exit




