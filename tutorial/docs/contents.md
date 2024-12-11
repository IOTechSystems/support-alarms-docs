In the following, we demonstrate the steps to configure the alarm service.
We create severity-based condition, one route that is associated with an Email action. 
We use [Altair](https://altairgraphql.dev/) which is a GraphQL client tool for testing GraphQL Server. 
The tool has a number of interesting features including: creating environment variables, schema doc view and search, and import/export collection. 
The following instructions are to demonstrate how to use the tool to query and mutate for managing the alarm service. 

<details>
  <summary><strong>Table of Contents</strong></summary>

* [Altair](#Altair)
* [Create Condition ](#Create-Condition)
* [Create Route ](#Create-Route)
* [Create Action ](#Create-Action)
* [Associate Action with Route ](#Associate-Action-with-Route)
* [Trigger a Test Alarm ](#Trigger-a-Test-Alarm)
* [View Alarm and Alarm States ](#View-Alarm-and-Alarm-States)
* [Rest the Test Alarm ](#Rest-the-Test-Alarm)
</details>

### Altair
- Download and install the tool from https://altairgraphql.dev/#download

- Open the tool, ensure you set the correct url for the router service, for example: http://127.0.0.1:8084/graphql

### Create Condition

- Create a condition configured to accept High, Medium, and Low severity levels using the following GraphQL mutation:
```GraphQL
mutation {
  ConditionCreate(input: { name: "Condition1", 
                          severities: [HIGH, MEDIUM, LOW] }) {
    condition {
      id
      name
      deviceNames
      deviceGroups
      severities
      tsCreated
      tsModified
    }
    status {
      error
    }
  }
}
```
  ![Create_Condition](./images/01-Create_Condition.png)

- View conditions to ensure the successful creation of the condition using the following GraphQL query, and **copy the condition ID**:
```GraphQL
query{
  Condition(
    limit: 10,
    offset: 0
  ) {
    conditions {
      id
      name
      severities
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
  ![View_Conditions](./images/02-View_Conditions.png)

### Create Route 

- Create a route using the **previous condition ID** (compulsory field) using following GraphQL mutation:
```GraphQL
mutation {
  RouteCreate(input: { name: "Route1",
    schedule: "BEGIN:VCALENDAR\r\nVERSION:2.0\r\nCALSCALE:GREGORIAN\r\nBEGIN:VEVENT\r\nDTSTART:20240101T000000Z\r\nDTEND:20240101T235959Z\r\nRRULE:FREQ=DAILY;INTERVAL=1\r\nEND:VEVENT\r\nEND:VCALENDAR",
    conditionId: "8b52d842-70c0-44b6-89bf-3c07574e1645",
    enableStatus: true}) {
    route {
      id
      name
      description
      delay
      retries
      schedule
      tsCreated
      tsModified
    }
    status {
      error
    }
  }
}
```
  ![Create_Route](./images/03-Create_Route.png)
  
  Please notice, we use iCalendar (RFC 5545) standard format to specify the route's schedule. 
  In this example, we allow the route to occur at any time and the string contents have been escaped (using an online free tool such as [link](https://www.freeformatter.com/json-escape.html)) to remove Newline and Carriage return characters in the API call.
  For more iCalendar strings examples, please see this [link](./iCalendar-examples.md).

- View routes to ensure the successful creation of the route using following GraphQL query:
```GraphQL
query {
  Route(
    limit: 10
    offset: 0
  ) {
    routes {
      id
      name
      condition {
        id
        name
        severities
      }
      actions{
        id
        name
        type
      }
      delay
      schedule
      enableStatus
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
  ![View_Routes](./images/04-View_Routes.png)

### Create Action

- To create Email action, we use **MailTrap**, a testing email server that provides us with email credentials. 
  Please sign up and **copy the credentials**:

  ![MailTrap_Credentials](./images/05-MailTrap_Credentials.png)

- Create Email action using the following JSON configuration and the following GraphQL mutation:

```JSON
{
"Config" : {
 "Hostname": "sandbox.smtp.mailtrap.io",
 "Port": "2525",
 "Username": "fe8e4914a9d8c4",
 "Password": "4d2ae63574495b",
 "From": "from@example.com"
},
"Receivers": ["to@example.com"],
"Subject": "Test Email Action 1"
}
```

```GraphQL
mutation {
  ActionCreate(input: { name: "EmailAction1", type: EMAIL, enableStatus: true,
    config: "{\r\n\"Config\" : {\r\n \"Hostname\": \"sandbox.smtp.mailtrap.io\",\r\n \"Port\": \"2525\",\r\n \"Username\": \"fe8e4914a9d8c4\",\r\n \"Password\": \"4d2ae63574495b\",\r\n \"From\": \"from@example.com\"\r\n},\r\n\"Receivers\": [\"to@example.com\"],\r\n\"Subject\": \"Test Email Action 1\"\r\n}" }) {
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

  Please notice that the JSON config string contents have been escaped (using an online free tool such as [link](https://www.freeformatter.com/json-escape.html)) to remove Newline and Carriage return characters in the API call.

  ![Create_Email_Action](./images/06-Create_Email_Action.png)
  
- View actions to ensure the successful creation of the action and copy the action ID using the following GraphQL query:
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
  ![View_Actions](./images/07-View_Actions.png)

### Associate Action with Route 

- Associate the route with the created action using the following GraphQL mutation:
  Please ensure you **copied the action ID** and **route ID** from the previous actions and routes queries.

```GraphQL
mutation {
  RouteActionAssociate(actionId: "86e665ab-c66a-4c5f-8459-41f78863fad2",
    routeId: "e32d27e4-7072-45f4-83fd-3f24938b202f") {
    route {
      id
      name
      description
      condition{
        id
        name
      }
      delay
      retries
      schedule
      actions{
        id
        name
      }
      tsCreated
      tsModified
    }
    status {
      error
    }
  }
}
```

  ![Create_Email_Action](./images/08-Associate_Route_Action.png)

- View the routes to ensure the action has been associated successfully using the following GraphQL query:
```GraphQL
query {
  Route(
    limit: 10
    offset: 0
  ) {
    routes {
      id
      name
      condition {
        id
        name
        severities
      }
      actions{
        id
        name
        type
      }
      delay
      schedule
      enableStatus
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

Please notice the actions field in the output window should match the associated action details created previously.

  ![View_Routes](./images/09-View_Routes.png)

### Trigger a Test Alarm

- Trigger a test alarm with Medium level severity using the following GraphQL mutation:

```GraphQL
mutation {
  TriggerTestAlarm(severity: MEDIUM) {
    error
  }
}
```

  ![Trigger_Test_Alarm](./images/10-Trigger_Test_Alarm.png)

### View Alarm and Alarm States

- To confirm the alarm has been triggered, view the alarms using the following GraphQL query:

```GraphQL
query {
  Alarms(offset: 0, limit: 10, filter: {}) {
    alarms {
      id
      lastStateGroupId
      processValue
      alarmLimit
      applicationType
      description
      group
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

  ![View_Alarms](./images/11-View_Alarms.png)

- Also, we can view alarm states using the following GraphQL query:

```GraphQL
query{
  States(offset: 0, limit: 10, filter: {}) {
    alarmStates {
      id
      alarmId
      stateGroupId
      severity
      comment
      retain
      enabled
      acked
      confirmed
      active
      suppressed
      shelved
      outOfService
      latched
      timestamp
      routed
      userId
      status
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

  ![View_Alarms_States](./images/12-View_Alarms_States.png)
  please notice the routed field in the output window should be marked success and active field is true.

- We should now have received a test email indicating the alarm has been triggered:
  ![View_MailTrap_Inbox](./images/13-View_MailTrap_Inbox.png)

### Rest the Test Alarm

- Optionally, you can reset the test alarm using the following GraphQL mutation:

```GraphQL
mutation {
  ResetTestAlarm {
    error
  }
}
```
  ![Reset_Test_Alarm](./images/14-Reset_Test_Alarm.png)

- To confirm the test alarm has been reset, we should see a new alarm state with severity set to Low and active field set to false:
  ![View_Alarm_States](./images/15-View_Alarm_States.png)

