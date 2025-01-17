# WebSocket service - JWT authentication

A WebSocket service can be secured with JWT and by enforcingauthorization optionally. Then, it validates the JWT sent in the `Authorization` header against the provided configurations.

Ballerina uses the concept of scopes for authorization. A resource declared in a service can be bound to one/more scope(s). The scope can be included in the JWT using a custom claim attribute. That custom claim attribute also can be configured as the `scopeKey`. In the authorization phase, the scopes of the service are compared against the scope included in the JWT for at least one match between the two sets.

::: code websocket_service_jwt_auth.bal :::

Run the service by executing the command below.

::: out websocket_service_jwt_auth.server.out :::

>**Tip:** You can invoke the above service via the [self-signed JWT authentication client](/learn/by-example/websocket-client-self-signed-jwt-auth).

## Related Links
- [`websocket` package - API documentation](https://lib.ballerina.io/ballerina/websocket/latest)
- [`jwt` package - API documentation](https://lib.ballerina.io/ballerina/jwt/latest/)
- [WebSocket authentication - Specification](/spec/websocket/#52-authentication-and-authorization)