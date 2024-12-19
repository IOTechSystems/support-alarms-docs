# Walkthrough of Alarms and States management API

In the following tutorial, we demonstrate the steps to manage Alarms and States in the Alarm Service using [Altair](https://altairgraphql.dev/) GraphQL client.

<details>
  <summary><strong>Table of Contents</strong></summary>

* [Acknowledge and Confirm](#Acknowledge-and-Confirm)
* [Shelve and Unshelve](#Shelve-and-Unshelve)
* [Suppress and UnSuppress](#Suppress-and-UnSuppress)
* [OutOfService and InService](#OutOfService-and-InService)
* [Disable and Enable](#Disable-and-Enable)
</details>

### Acknowledge and Confirm
- Trigger a test alarm using the following GraphQL mutation.
```GraphQL
mutation {
  TriggerTestAlarm(severity: HIGH) {
    error
  }
}
```
  Please notice the severity level can be selected from: `CRITICAL`, `HIGH`, `MEDIUM`, or `LOW`.

- View the current alarm using the following GraphQL query:
```GraphQL
query {
    Alarms(offset: 0, limit: 10, filter: {}) {
        alarms {
            id
            lastStateGroupId
            processValue
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
  ![View_Alarm](./images/16-view-alarm.png)

- View the alarm states using the following GraphQL query:
```GraphQL
query{
    States(offset: 0, limit: 10, filter: {}) {
        alarmStates {
            id
            alarmId
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
  ![View_Alarm_States](./images/17-view-alarm-states.png)
  Please notice the fields `"active": true` and `"acked": false` in the output window.

- Copy the `id` field of the output window, this is the current state ID.

- Acknowledge the state using the **copied state id** from the previous step:
```GraphQL
mutation {
    AcknowledgeState(stateId: "a3d3a6cc352f0ceb4d0523daef97e837") {
        error
    }
}
```

- View the alarm states once again using the following GraphQL query:
```GraphQL
query{
    States(offset: 0, limit: 10, filter: {}) {
        alarmStates {
            id
            alarmId
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
  Please notice that a **new state** has been created with the field `"acked": true` in the output window.

- Copy the `id` field of the **latest** state from the output window.

- Confirm the **latest** state using the **copied state id** from the previous step:
```GraphQL
mutation {
    ConfirmState(stateId: "bd3c8d4f72f6824f5cb9ef1e458f8a98") {
        error
    }
}
```

- View the alarm states again, you should see a new state with `"confirmed": true` in the output window.

- Reset the test alarm using the following GraphQL mutation
```GraphQL
mutation {
    ResetTestAlarm {
        error
    }
}
```

- View the alarm states again, you should see a new state with `"active": false` in the output window.

### Shelve and Unshelve

- Restart the alarm service to clear the current alarm and its states generated from the previous section.
```Shell
$ edgecentral down

$ ./deploy.sh 
clean: delete all Edge Central data (y/n)? y
```

- Trigger a test alarm using the following GraphQL mutation
```GraphQL
mutation {
  TriggerTestAlarm(severity: HIGH) {
    error
  }
}
```
  Please notice the severity level can be selected from: `CRITICAL`, `HIGH`, `MEDIUM`, or `LOW`.

- View the alarm states, you should see a new state with `"shelved": false` in the output window.

- View the alarm and copy the `id` field from the output window. This is the **alarm ID** needed for next steps.
  ![View_Alarm_Copy_ID](./images/18-view-alarm-copy-id.png)

- Shelve the alarm using the copied alarm ID from the previous step:
```GraphQL
mutation {
  ShelveAlarm(alarmId: "ns=1;g=4F6C9047-AD3F-8F2A-D70D-90E91481B87B") {
    error
  }
}
```
  ![View_Shelved_Alarm_State](./images/19-view-shelved-alarm-states.png)

- View the alarm states again, you should see a new state with `"shelved": true` in the output window.

- Unshelve the alarm using the copied alarm ID from the previous step:
```GraphQL
mutation {
  ShelveAlarm(alarmId: "ns=1;g=4F6C9047-AD3F-8F2A-D70D-90E91481B87B") {
    error
  }
}
```

- View the alarm states again, you should see a new state with `"shelved": false` in the output window.

- Reset the test alarm using the following GraphQL mutation
```GraphQL
mutation {
    ResetTestAlarm {
        error
    }
}
```

### Suppress and UnSuppress

- Restart the alarm service to clear the current alarm and its states generated from the previous section.
```Shell
$ edgecentral down

$ ./deploy.sh 
clean: delete all Edge Central data (y/n)? y
```

- Trigger a test alarm using the following GraphQL mutation
```GraphQL
mutation {
  TriggerTestAlarm(severity: HIGH) {
    error
  }
}
```
  Please notice the severity level can be selected from: `CRITICAL`, `HIGH`, `MEDIUM`, or `LOW`.

- View the alarm states, you should see a new state with `"suppressed": false` in the output window.

- View the alarm and copy the `id` field from the output window. This is the **alarm ID** needed for next steps.

- Suppress the alarm using the copied alarm ID from the previous step:
```GraphQL
mutation {
  SuppressAlarm(alarmId: "ns=1;g=5DBCCEE8-3419-9FDF-7277-37336F06C08C") {
    error
  }
}
```

- View the alarm states again, you should see a new state with `"suppressed": true` in the output window.

- Unsuppress the alarm using the copied alarm ID from the previous step:
```GraphQL
mutation {
  UnsuppressAlarm(alarmId: "ns=1;g=5DBCCEE8-3419-9FDF-7277-37336F06C08C") {
    error
  }
}
```

- View the alarm states again, you should see a new state with `"suppressed": false` in the output window.

- Reset the test alarm using the following GraphQL mutation
```GraphQL
mutation {
    ResetTestAlarm {
        error
    }
}
```

### OutOfService and InService

- Restart the alarm service to clear the current alarm and its states generated from the previous section.
```Shell
$ edgecentral down

$ ./deploy.sh 
clean: delete all Edge Central data (y/n)? y
```

- Trigger a test alarm using the following GraphQL mutation
```GraphQL
mutation {
  TriggerTestAlarm(severity: HIGH) {
    error
  }
}
```
  Please notice the severity level can be selected from: `CRITICAL`, `HIGH`, `MEDIUM`, or `LOW`.

- View the alarm states, you should see a new state with `"outOfService": false` in the output window.

- View the alarm and copy the `id` field from the output window. This is the **alarm ID** needed for next steps.

- Place the alarm out-of-service using the copied alarm ID from the previous step:
```GraphQL
mutation {
  RemoveFromServiceAlarm(alarmId: "ns=1;g=E2658F62-3544-3CCD-AB8A-E81E90F9EF6E") {
    error
  }
}
```

- View the alarm states again, you should see a new state with `"outOfService": true` in the output window.

- Place the alarm in-service using the copied alarm ID from the previous step:
```GraphQL
mutation {
  PlaceInServiceAlarm(alarmId: "ns=1;g=2CE7249E-74CF-A692-0CD0-6DC635734764") {
    error
  }
}
```

- View the alarm states again, you should see a new state with `"outOfService": false` in the output window.

- Reset the test alarm using the following GraphQL mutation
```GraphQL
mutation {
    ResetTestAlarm {
        error
    }
}
```

### Disable and Enable

- Restart the alarm service to clear the current alarm and its states generated from the previous section.
```Shell
$ edgecentral down

$ ./deploy.sh 
clean: delete all Edge Central data (y/n)? y
```

- Trigger a test alarm using the following GraphQL mutation
```GraphQL
mutation {
  TriggerTestAlarm(severity: HIGH) {
    error
  }
}
```
  Please notice the severity level can be selected from: `CRITICAL`, `HIGH`, `MEDIUM`, or `LOW`.

- View the alarm states, you should see a new state with `"enabled": true` in the output window.

- View the alarm and copy the `id` field from the output window. This is the **alarm ID** needed for next steps.

- Disable the alarm using the copied alarm ID from the previous step:
```GraphQL
mutation {
  DisableAlarm(alarmId: "ns=1;g=1D13DFF3-5EFE-9B92-1F51-9599EBAEEA0E") {
    error
  }
}
```

- View the alarm states again, you should see **NO new state** created in the output window as the alarm is disabled.

- Enable the alarm using the copied alarm ID from the previous step:
```GraphQL
mutation {
  EnableAlarm(alarmId: "ns=1;g=1D13DFF3-5EFE-9B92-1F51-9599EBAEEA0E") {
    error
  }
}
```

- View the alarm states again, you should see a new state with `"enabled": true` in the output window.

- Reset the test alarm using the following GraphQL mutation
```GraphQL
mutation {
    ResetTestAlarm {
        error
    }
}
```