#!/bin/sh

. ./.env
docker compose -f docker-compose.edgex.yml up -d 
