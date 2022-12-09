# gRPC client - Bearer token authentication

This example shows how to authenticate a gRPC client using bearer token authentication. Here, the client metadata is enriched with the `Authorization: Bearer <token>` header by passing the `grpc:BearerTokenConfig` for the `auth` configuration of the client. Use this to connect to a service secured with token authentication.

   ::: code grpc_client_bearer_token_auth.bal :::

You can refer to the [gRPC client - Unary RPC](/learn/by-example/grpc-client-unary/) to implement the client used here.

## Prerequisites
- Start a secured service.

Execute the command below to run the client.

   ::: out grpc_client_bearer_token_auth.out :::

## Related links
- [`grpc:BearerTokenConfig` record - API documentation](https://lib.ballerina.io/ballerina/grpc/latest/records/BearerTokenConfig)
- [gRPC client bearer token authentication - Specification](/spec/grpc/#5116-client---bearer-token-auth)
- [`auth` module - API documentation](https://lib.ballerina.io/ballerina/auth/latest/)
