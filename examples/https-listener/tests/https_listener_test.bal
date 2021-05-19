import ballerina/http;
import ballerina/test;

@test:Config {}
function testFunc() {
    http:Client httpEndpoint = new("https://localhost:9095", config = {
        secureSocket: {
            cert: "../resource/path/to/public.crt"
        }
    });

    string response1 = "Hello World!";
    http:Response|error response = httpEndpoint->get("/hello");
    if (response is http:Response) {
        test:assertEquals(response.getTextPayload(), response1);
    } else {
        test:assertFail(msg = "Failed to call the endpoint:");
    }
}
