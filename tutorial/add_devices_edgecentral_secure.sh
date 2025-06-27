#!/bin/bash

# Read client token from fixed path
token=$(sudo jq -r '.auth.client_token' /tmp/edgex/secrets/core-metadata/secrets-token.json)

# Get IPs of secret-store and core-metadata containers
secret_store_ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' secret-store)
metadata_ip=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' core-metadata)

jwt=$(curl -ks -H "Authorization: Bearer $token" \
  "http://${secret_store_ip}:8200/v1/identity/oidc/token/core-metadata" \
  | jq -r '.data.token')

echo "Adding profile"
jq '[{"apiVersion": "v3", "profile": .}]' < ./res/profiles/Controller.json | curl -sk -X POST \
  "http://${metadata_ip}:59881/api/v3/deviceprofile" \
  -H "Authorization: Bearer $jwt" \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d @-

echo "Adding devices"
curl -sk -X POST \
  "http://${metadata_ip}:59881/api/v3/device" \
  -H "Authorization: Bearer $jwt" \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d @./res/devices/devices.json
