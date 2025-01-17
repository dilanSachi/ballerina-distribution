# GraphQL client - SSL/TLS

A GraphQL client can securely communicate with a GraphQL service via HTTPS connection using SSL. Provide the `graphql:ClientSecureSocket` configurations to the client to initiate an HTTPS connection.

This example shows how to send a GraphQL request securely using SSL/TLS.

::: code graphql_client_security_ssl_tls.bal :::

## Prerequisites
- Run the GraphQL service given in the [SSL/TLS](https://ballerina.io/learn/by-example/graphql-returning-record-values) example.

Run the client program by executing the following command.

::: out graphql_client_security_ssl_tls.out :::

## Related links
- [`graphql:ClientSecureSocket` record - API documentation](https://lib.ballerina.io/ballerina/graphql/latest/records/ClientSecureSocket)
- [GraphQL client SSL/TLS - Specification](/spec/graphql/#11321-ssltls)
