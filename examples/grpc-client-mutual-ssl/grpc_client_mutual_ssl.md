# gRPC client - Mutual SSL

This example shows how to secure a client via mutual SSL. Ballerina supports mutual SSL, which is a certificate-based authentication process in which two parties (the client and server) authenticate each other by verifying the digital certificates. It ensures that both parties are assured of each other's identity. To do this, provide the relevant `grpc:ClientSecureSocket` configurations when creating the client. Use this when you want to secure the connection via mutual SSL.  

   ::: code grpc_client_mutual_ssl.bal :::

Setting up the client is the same as setting up the unary RPC client with additional configurations. You can refer to the [gRPC client - Unary RPC](/learn/by-example/grpc-client-unary/) to implement the client used here.

## Prerequisites
- Run the gRPC service given in the [gRPC service - Mutual SSL](/learn/by-example/grpc-service-mutual-ssl/) example.

Execute the command below to run the client.

   ::: out grpc_client_mutual_ssl.out :::

## Related links
- [`grpc:ClientSecureSocket` record - API documentation](https://lib.ballerina.io/ballerina/grpc/latest/records/ClientSecureSocket)
- [gRPC client mutual SSL - Specification](/spec/grpc/#52-ssltls-and-mutual-ssl)
