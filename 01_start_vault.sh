#!/bin/sh
set -o xtrace

# Start docker
#systemctl start docker
#stop and remove vault containers if already running


#docker stop vault-demo-vault
#docker rm vault-demo-vault
#start Vault in dev mode on port 8200
#location=$(pwd)
#docker run --name vault-demo-vault -v ${location}/log:/var/log \
#    -p 8200:8200 vault:1.4.0 \
#    server -dev -dev-root-token-id="root" &


### Start vault server in dev mode
vault server -dev
