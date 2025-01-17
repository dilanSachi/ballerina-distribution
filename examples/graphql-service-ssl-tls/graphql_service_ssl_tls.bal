import ballerina/graphql;

type Profile record {|
    string name;
    int age;
|};

// A GraphQL listener can be configured to communicate through HTTPS as well.
// To secure a listener using HTTPS, the listener needs to be configured with
// a certificate file and a private key file for the listener.
// The `graphql:ListenerSecureSocket` record provides the
// SSL-related listener configurations of the listener.
listener graphql:Listener securedEP = new (9090,
    secureSocket = {
        key: {
            certFile: "../resource/path/to/public.crt",
            keyFile: "../resource/path/to/private.key"
        }
    }
);

service /graphql on securedEP {
    resource function get profile() returns Profile {
        return {
            name: "Walter White",
            age: 50
        };
    }
}
