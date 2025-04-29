#!/bin/sh
curl -X POST http://localhost:59720/rules -H 'Content-Type: application/json' -d '{                                           
  "id": "rule",                                                                                                                    
  "sql": "SELECT AirPressure, CASE WHEN AirPressure > 2999 THEN true ELSE false END as setting FROM demo WHERE meta(deviceName) = \"Controller-2\" AND meta(sourceName) = \"AirPressure\"",
  "actions": [
    {
      "mqtt": {
        "server": "tcp://edgex-mqtt-broker:1883",
        "topic": "xrt/mqtt/input",
        "clientId": "controller0_001",
        "dataTemplate": "{\"setting\":{{.setting}}, \"source\" : \"ekuiper\"}",
        "sendSingle": true
      }
    },
    {
      "log": {}
    }
  ]
}'
