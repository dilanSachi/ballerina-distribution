import ballerina/graphql;
import ballerina/io;

// User defined data types to retrive data from the service.
type ProfileResponse record {|
    *graphql:GenericResponseWithErrors;
    record {|Profile profile;|} data;
|};

type Profile record {|
    string name;
    int age;
|};

public function main() returns error? {
    // Create a GraphQL client with OAuth2 configurations.
    graphql:Client graphqlClient = check new("localhost:9090/graphql",
        auth = {
            tokenUrl: "https://localhost:9445/oauth2/token",
            username: "admin",
            password: "admin",
            clientId: "FlfJYKBD2c925h4lkycqNZlC2l4a",
            clientSecret: "PJz0UhTJMrHOo68QQNpvnqAY_3Aa",
            scopes: ["admin"],
            refreshConfig: {
                refreshUrl: "https://localhost:9445/oauth2/token",
                scopes: ["hello"],
                clientConfig: {
                    secureSocket: {
                        cert: "../resource/path/to/public.crt"
                    }
                }
            },
            clientConfig: {
                secureSocket: {
                    cert: "../resource/path/to/public.crt"
                }
            }
        },
        secureSocket = {
            cert: "../resource/path/to/public.crt"
        }
    );

    // Define the GraphQL document to be sent to the GraphQL service.
    string document = "{ profile { name, age } }";

    // Execute the document and retrieve the response from the GraphQL service.
    ProfileResponse response = check graphqlClient->execute(document);
    io:println(response.data.profile);
}
