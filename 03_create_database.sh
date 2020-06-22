#!/bin/sh
set -o xtrace

export VAULT_ADDR=http://localhost:8200

export VAULT_TOKEN=root
export VAULT_NAMESPACE=



# run database container
podman run --name postgres -e POSTGRES_USER=root \
         -e POSTGRES_PASSWORD=rootpassword \
         -d -p 5432:5432 postgres

# configures the database secrets engine using postgresql-database-plugin. The allowed role is readonly

vault write database/config/postgresql \
    plugin_name=postgresql-database-plugin \
    allowed_roles=readonly \
    connection_url='postgresql://root:rootpassword@localhost:5432/postgres?sslmode=disable'


