#!/bin/sh
curl -X POST http://localhost:59720/streams -H 'Content-Type: application/json' -d '{"sql": "create stream demo() WITH (FORMAT=\"JSON\", TYPE=\"edgex\")"}'
