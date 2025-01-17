import ballerina/http;
import ballerina/io;

type Album readonly & record {|
    string title;
    string artist;
|};

public function main() returns error? {
    // An HTTP client can be configured to communicate through HTTPS as well.
    // To secure a client using HTTPS, the client needs to be configured with
    // a certificate file of the listener. The `http:ClientSecureSocket` record
    // provides the SSL-related configurations of the client.
    http:Client albumClient = check new("localhost:9090",
        secureSocket = {
            cert: "../resource/path/to/public.crt"
        }
    );
    Album[] payload = check albumClient->/albums;
    io:println(payload);
}
