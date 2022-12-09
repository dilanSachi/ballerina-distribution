# gRPC client - Basic authentication

This example shows how to authenticate a gRPC client using basic authentication. Here, the client metadata is enriched with the `Authorization: Basic <token>` header by passing the `grpc:CredentialsConfig` for the `auth` configuration of the client. Use this to connect to a service secured with basic authentication.

   ::: code grpc_client_basic_auth.bal :::

Setting up the client is the same as setting up the unary RPC client with additional configurations. You can refer to the [gRPC client - Unary RPC](/learn/by-example/grpc-client-unary/) to implement the client used here.

## Prerequisites
- Run the gRPC service given in the [gRPC service - Basic authentication file user store](/learn/by-example/grpc-service-basic-auth-file-user-store/) or [gRPC service - Basic authentication LDAP user store](/learn/by-example/grpc-service-basic-auth-ldap-user-store/) examples.

Execute the command below to run the client.

   ::: out grpc_client_basic_auth.out :::

## Related links
- [`grpc:ClientAuthConfig` type - API documentation](https://lib.ballerina.io/ballerina/grpc/latest/types#ClientAuthConfig)
- [gRPC client basic authentication - Specification](/spec/grpc/#5115-client---basic-auth)
- [`auth` module - API documentation](https://lib.ballerina.io/ballerina/auth/latest/)
