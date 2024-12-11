#!/bin/sh

echo "Adding profile"
#Add profile 
jq '[
  {
    "apiVersion": "v3",
    "profile": .
  }
]' < ./res/profiles/Controller.json | curl -X 'POST' \
  'http://localhost:59881/api/v3/deviceprofile' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d @-

echo "Adding devices"
curl -X 'POST' \
  'http://localhost:59881/api/v3/device' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d @./res/devices/devices.json

