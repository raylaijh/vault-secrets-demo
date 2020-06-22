#!/bin/sh
set -o xtrace
export VAULT_ADDR=http://localhost:8200



# Lease existing lease ID
vault list sys/leases/lookup/database/creds/readonly

# renew lease for database creds

# vault lease renew database/creds/readonly/$token





