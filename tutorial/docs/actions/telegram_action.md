### Telegram Action

As an alternative to an Email Action, it is also possible to create a Telegram Action. Note this is an optional part of the tutorial and not required if an Email Action has already been created.

To create a Telegram Action one could use either use the Telegram app or desktop as follows:
  - Search for **@Botfather** in Telegram. Write /help to see the options
  - Create a new bot with `/newbot`, and choose a unique name for it, for example: `TestABC123_Bot`
  - **@Botfather** will generate api token, copy it to somewhere safe
  - Create a new Telegram Group (e.g., `alarm-service`) and add the newly created bot as a member
  - Now write some text to the group to initialize it
  - Call `https://api.telegram.org/bot[token]/getUpdates` in your browser and look for the chat id
  - Copy the chat id to somewhere safe, please notice that the minus "-" sign must be included
  - In Altair create a new action with type Telegram and (JSON escaped - required by Altair) config using the generated token and chat_id:

```JSON
{
  "token": "7386979286:ABCDEFGHYGKLMNOPQRSTUVWXYZ",
  "chat_id": "-4512207336"
}
```

```GraphQL
mutation {
  ActionCreate(input: { name: "TelegramAction1", type: TELEGRAM, enableStatus: true, 
      config: "{\"token\":\"7386979286:AAHO2m1zWkSYlkDtTLdQKogvEhFomabDG3M\", \"chat_id\":\"-4512207336\"}" }) {
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