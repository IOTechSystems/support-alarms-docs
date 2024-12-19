#!/bin/sh

#Access security token. Instructions based on https://docs.edgexfoundry.org/4.0/security/Ch-Authenticating/
username=exampleuser
docker exec -ti edgex-security-proxy-setup ./secrets-config proxy deluser --user "${username}" --useRootToken
password=$(docker exec -ti edgex-security-proxy-setup ./secrets-config proxy adduser --user "${username}" --tokenTTL 60 --jwtTTL 119m --useRootToken | jq -r '.password')
vault_token=$(curl -ks "http://localhost:8200/v1/auth/userpass/login/${username}" -d "{\"password\":\"${password}\"}" | jq -r '.auth.client_token')
id_token=$(curl -ks -H "Authorization: Bearer ${vault_token}" "http://localhost:8200/v1/identity/oidc/token/${username}" | jq -r '.data.token')

echo "Adding profile"
#Add profile 
jq '[
  {
    "apiVersion": "v3",
    "profile": .
  }
]' < ./res/profiles/Controller.json | curl -H "Authorization: Bearer ${id_token}" -X 'POST' \
  'http://localhost:59881/api/v3/deviceprofile' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d @-

echo "Adding devices"
curl -H "Authorization: Bearer ${id_token}" -X 'POST' \
  'http://localhost:59881/api/v3/device' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d @./res/devices/devices.json

