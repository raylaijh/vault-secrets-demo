#!/bin/sh
set -o xtrace

export VAULT_ADDR=http://localhost:8200

export VAULT_TOKEN=root
export VAULT_NAMESPACE=


# create readonly.sql
echo 'CREATE ROLE "{{name}}" WITH LOGIN PASSWORD '{{password}}' VALID UNTIL '{{expiration}}';
GRANT SELECT ON ALL TABLES IN SCHEMA public TO "{{name}}";' > readonly.sql


# create database role
vault write database/roles/readonly db_name=postgresql \
        creation_statements=@readonly.sql \
        default_ttl=1h max_ttl=24h


