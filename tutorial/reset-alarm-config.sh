#!/bin/bash

docker exec -it -e PGPASSWORD=postgres edgex-postgres psql -U postgres -d edgex_db -c "DROP TABLE IF EXISTS alarm_service_config.sources, alarm_service_config.source_configuration, alarm_service_config.configurations CASCADE; DROP SCHEMA IF EXISTS alarm_service_config CASCADE;"
