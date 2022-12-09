# gRPC client - Send/Receive headers

This examples shows how to send and receive headers with a gRPC client. Support for sending/receiving headers is provided as a part of inbound/outbound messages. gRPC/Protobuf tool generates Context record for each protobuf message type which contains the protobuf message and header map. The header map supports `string`, `string[]` types. You can create a Context record value with the required headers and send it using the context method of the client (`helloContext()`). To receive the headers, provide the Context type of the required record as the target type of the response. gRPC also provides `grpc:getHeader()` and `grpc:getHeaders()` APIs to manipulate header values.

   ::: code grpc_simple_with_headers_service_client.bal :::

Setting up the client is the same as setting up the unary RPC client with input and output parameter change. You can refer to the [gRPC client - Unary RPC](/learn/by-example/grpc-client-unary/) to implement the client used here.

## Prerequisites
- Run the gRPC service given in the [gRPC service - Send/Receive headers](/learn/by-example/grpc-service-headers/) example.

Execute the command below to run the client.

   ::: out grpc_simple_with_headers_service_client.out :::

## Related links
- [`grpc` module - API documentation](https://lib.ballerina.io/ballerina/grpc/latest)
- [`grpc` module - Specification](/spec/grpc/)
