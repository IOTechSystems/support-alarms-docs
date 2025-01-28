### Email Action

To create an Email Action, we use **[MailTrap](https://mailtrap.io/)**, a test email server that provides us with email credentials.
  Please sign up and **copy the credentials to use below**:

  ![MailTrap_Credentials](../images/05-MailTrap_Credentials.png)

Create an Email Action using the following JSON configuration and the following GraphQL mutation. Ensure that the GraphQL mutation uses your specific values for the Username and Password:

```JSON
{
"Config" : {
 "Hostname": "sandbox.smtp.mailtrap.io",
 "Port": "2525",
 "Username": "username",
 "Password": "password",
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

Please notice that the JSON config string contents have been escaped as required by Altair (using an online free tool such as [link](https://www.freeformatter.com/json-escape.html)) to remove Newline and Carriage return characters in the API call.

![Create_Email_Action](../images/06-Create_Email_Action.png)

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
![View_Actions](../images/07-View_Actions.png)

- Optionally, you could create an Email Action based on **Gmail** if you have one.
    - Generate **App Password** from your Gmail account: `myaccount.google.com/apppasswords` (instead of using your Gmail password).
      An app password is a 16-digit passcode that gives a less secure app or device permission to access your Google Account.
      Please notice that App passwords can only be used with accounts that have **2-Step Verification** turned on.
    - Use the following JSON configuration (JSON escaped - required by Altair) for your Email Action:
```JSON
{
"Config" : {
 "Hostname": "smtp.gmail.com",
 "Port": "587",
 "Username": "YourGmailAddress",
 "Password": "**** **** **** ****",
 "From": "YourGmailAddress"
},
"Receivers": ["YourGmailAddress"],
"Subject": "Test Email Action 1"
}
```

