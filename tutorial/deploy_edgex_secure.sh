#!/bin/sh
. ./.env
docker compose -f docker-compose.edgex-secure.yml up -d
