#!/bin/sh

JWT=$(curl -sk -X POST 'https://localhost:8443/login' \
  -H 'Content-Type: application/json' \
  -d '{"username":"admin","password":"Admin@Edge0"}' | jq -r '.jwt')

echo "Adding profile"

jq '[
  {
    "apiVersion": "v3",
    "profile": .
  }
]' < ./res/profiles/Controller.json | curl -sk -X POST \
  'https://localhost:8443/core-metadata/api/v3/deviceprofile' \
  -H "Authorization: Bearer $JWT" \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d @-

echo "Adding devices"

curl -sk -X POST \
  'https://localhost:8443/core-metadata/api/v3/device' \
  -H "Authorization: Bearer $JWT" \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d @./res/devices/devices.json
