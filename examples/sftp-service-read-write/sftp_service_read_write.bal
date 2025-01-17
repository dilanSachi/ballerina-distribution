import ballerina/ftp;
import ballerina/io;

// Creates the listener with the connection parameters and the protocol-related
// configuration. The listener listens to the files
// with the given file name pattern located in the specified path.
listener ftp:Listener fileListener = check new ({
    protocol: ftp:SFTP,
    host: "sftp.example.com",
    auth: {
        credentials: {
            username: "user1",
            password: "pass456"
        },
        privateKey: {
            path: "../resource/path/to/private.key",
            password: "keyPass123"
        }
    },
    port: 22,
    path: "/home/in",
    fileNamePattern: "(.*).txt"
});

// One or many services can listen to the SFTP listener for the
// periodically-polled file related events.
service on fileListener {
    // When a file event is successfully received, the `onFileChange` method is called.
    remote function onFileChange(ftp:WatchEvent event, ftp:Caller caller) returns error? {
        // `addedFiles` contains the paths of the newly-added files/directories
        // after the last polling was called.
        foreach ftp:FileInfo addedFile in event.addedFiles {
            // The `ftp:Caller` can be used to append another file to the added files in the server.
            stream<io:Block, io:Error?> fileStream = check io:fileReadBlocksAsStream("./local/appendFile.txt", 7);
            do {
                check caller->append(addedFile.path, fileStream);
            } on fail {
                check fileStream.close();
            }
        }
    }
}
