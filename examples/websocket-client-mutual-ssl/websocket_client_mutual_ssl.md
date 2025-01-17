# WebSocket client - Mutual SSL

Ballerina supports mutual SSL, which is a certificate-based authentication process in which two parties (the client and server) authenticate each other by verifying the digital certificates. It ensures that both parties are assured of each other's identity.

::: code websocket_client_mutual_ssl.bal :::

## Prerequisites
- Run the WebSocket service given in the [Mutual SSL](/learn/by-example/websocket-service-mutual-ssl/) example.

Run the client program by executing the command below.

::: out websocket_client_mutual_ssl.out :::

## Related Links
- [`websocket` package - API documentation](https://lib.ballerina.io/ballerina/websocket/latest)
- [WebSocket SSL/TLS - Specification](/spec/websocket/#5-securing-the-websocket-connections)

