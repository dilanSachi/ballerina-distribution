# Email client - Send email

The email connector is used to send (with SMTP) emails using the SSL or STARTTLS protocols. This sample includes sending emails with default configurations over SSL using the default ports.

::: code send_email.bal :::

## Prerequisites
- SMTP server should be up and running.

Run the SMTP client by executing the following command.

::: out send_email.out :::

## Related links
- [`email:SmtpClient` client object - API documentation](https://lib.ballerina.io/ballerina/email/latest/clients/SmtpClient)
- [`email:Message` record - API documentation](https://lib.ballerina.io/ballerina/email/latest/records/Message)
- [`email:SmtpClient` functions - Specification](https://ballerina.io/spec/email/#31-smtp-client)
