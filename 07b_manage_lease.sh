#!/bin/sh
set -o xtrace
export VAULT_ADDR=http://localhost:8200



# Renew existing lease ID

# vault lease renew database/creds/readonly/$token

# vault list sys/leases/lookup/database/creds/readonly

# vault lease revoke database/creds/readonly/$token

# vault list sys/leases/lookup/database/creds/readonly





