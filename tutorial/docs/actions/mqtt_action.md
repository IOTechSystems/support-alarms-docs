### MQTT Action

As an alternative to an Email Action, it is also possible to create an MQTT Action. Note this is an optional part of the tutorial and not required if an Email Action has already been created.

Create an MQTT Action using the following JSON configuration and the following GraphQL mutation:

```JSON
{
  "Scheme": "tcp",
  "Address": "broker.hivemq.com",
  "Port": "1883",
  "Topic": "alarm-service/test",
  "QoS": 0,
  "ClientID": "alarm-service",
  "AutoReconnect": true,
  "ConnectRetry": true,
  "ConnectTimeout": 5,
  "ConnectRetryInterval": 5,
  "PublishTimeout": 5,
  "Retain": false
}
```

This configuration utilizes HiveMQ MQTT Broker which is available online for free. If you have mosquitto client installed on your machine, you could subscribe to the message using the command:
```shell
mosquitto_sub -L mqtt://broker.hivemq.com:1883/alarm-service/test
```

As an alternative to HiveMQ MQTT Broker, it is possible to utilizes the internal MQTT Broker running as part of EdgeX.
The configuration of the internal MQTT Broker would look like the following:

```JSON
{
  "Scheme": "mqtt",
  "Address": "edgex-mqtt-broker",
  "Port": "1883",
  "Topic": "alarm-service/test",
  "QoS": 0,
  "ClientID": "alarm-service",
  "AutoReconnect": true,
  "ConnectRetry": true,
  "ConnectTimeout": 5,
  "ConnectRetryInterval": 5,
  "PublishTimeout": 5,
  "Retain": false
}
```

Similarly, if you have mosquitto client installed on your machine, you could subscribe to the message using the command:
```shell
mosquitto_sub -L mqtt://127.0.0.1:1883/alarm-service/test
```

Ensure that the GraphQL mutation uses your specific values:

```GraphQL
mutation {
  ActionCreate(input: { name: "MqttAction1", type: MQTT, enableStatus: true,
                      config: "{\"Scheme\":\"tcp\",\"Address\":\"broker.hivemq.com\",\"Port\":\"1883\",\"Topic\":\"alarm-service\/test\",\"QoS\":0,\"ClientID\":\"alarm-service\",\"AutoReconnect\":true,\"ConnectRetry\":true,\"ConnectTimeout\":5,\"ConnectRetryInterval\":5,\"PublishTimeout\":5,\"Retain\":false}"}) {
    action {
      id
      name
      description
      type
      config
      enableStatus
      stopConditionType
      duration
      tsCreated
      tsModified
    }
    status {
      error
    }
  }
}
```

To ensure the successful creation of the Action use the following GraphQL query:
```GraphQL
query{
  Action(
    limit: 10,
    offset: 0
  ) {
    actions {
      id
      name
      description
      type
      config
      enableStatus
      stopConditionType
      duration
      tsCreated
      tsModified
    }
    status {
      error
    }
    metadata {
      count
      limit
      offset
      total
    }
  }
}
```

**Note:** There are additional configuration items to create an MQTT Action, for example if you want to connect to an MQTT Broker using username/password and/or with TLS enabled:

| Item                 | Type   | Description                                                                                                                             |
|----------------------|--------|-----------------------------------------------------------------------------------------------------------------------------------------|
| Scheme              | string | e.g., mqtt, mqtts, or tcp.                                                                                                              |
| Address             | string | e.g., 127.0.0.1 or broker.hivemq.com.                                                                                                   |
| Port                | string | e.g., 1883 or 8883.                                                                                                                     |
| Topic               | string | MQTT topic to publish/subscribe to.                                                                                                     |
| QoS                 | int    | e.g., 0, 1, or 2 (Quality of Service level).                                                                                            |
| ClientID            | string | Unique identifier for the MQTT client.                                                                                                  |
| AutoReconnect       | bool   | Automatically reconnect if the connection is lost.                                                                                      |
| ConnectRetry        | bool   | Retry connecting if the initial connection fails.                                                                                       |
| ConnectTimeout      | int    | Timeout for connection attempts (in seconds).                                                                                           |
| ConnectRetryInterval| int    | Interval between connection retries (in seconds).                                                                                       |
| PublishTimeout      | int    | Timeout for publishing messages (in seconds).                                                                                           |
| Retain              | bool   | Whether to retain the last published message on the broker.                                                                             |
| Username            | string | Username for authentication.                                                                                                            |
| Password            | string | Password for authentication.                                                                                                            |
| CaCert              | string | CA Certificate contents encoded in Base64.                                                                                              |
| Cert                | string | Client Certificate contents encoded in Base64.                                                                                          |
| Key                 | string | Client Key contents encoded in Base64.                                                                                                  |
| InsecureSkipVerify  | bool   | Controls whether the client verifies the server's certificate chain and hostname. It should be `true` if used self-signed certificates. |
