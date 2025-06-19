#!/bin/bash

USERNAME="$1"

if [[ -z "$USERNAME" ]]; then
  echo "[ERROR] Username not provided"
  echo "Usage: ./get-jwt.sh <username>"
  exit 1
fi

echo "[INFO] Username: $USERNAME"

TOKEN_FILE="/tmp/edgex/secrets/$USERNAME/secrets-token.json"

if [[ ! -f "$TOKEN_FILE" ]]; then
  echo "[ERROR] Token file not found for user '$USERNAME': $TOKEN_FILE"
  exit 1
fi

echo "[INFO] Using token file: $TOKEN_FILE"

# Read client token with sudo
token=$(sudo jq -r '.auth.client_token' "$TOKEN_FILE")

if [[ -z "$token" || "$token" == "null" ]]; then
  echo "[ERROR] Could not read client_token from $TOKEN_FILE"
  exit 1
fi

echo "[DEBUG] Client token: $token"

# Confirm token belongs to the requested user
actual_user=$(sudo jq -r '.auth.metadata.username' "$TOKEN_FILE")
echo "[DEBUG] Token belongs to username: $actual_user"

ip=$(edgecentral ip | grep secret-store | cut -d '|' -f2 | xargs)

if [[ -z "$ip" ]]; then
  echo "[ERROR] Failed to retrieve secret-store IP"
  exit 1
fi

echo "[DEBUG] Secret-store IP: $ip"

echo "[INFO] Sending request to Vault..."
response=$(curl -ks -H "Authorization: Bearer $token" \
  "http://$ip:8200/v1/identity/oidc/token/$USERNAME")

echo "[DEBUG] Raw response:"
echo "$response"

jwt=$(echo "$response" | jq -r '.data.token')

if [[ -z "$jwt" || "$jwt" == "null" ]]; then
  echo "[ERROR] Failed to retrieve JWT. Check if the username is correct and has OIDC access."
  exit 1
fi

echo "[SUCCESS] JWT for $USERNAME:"
echo "$jwt"
