import ballerina.config;

function main(string[] args) {
    // Ballerina config API provides a mechanism for developers to lookup
    // values from config files, CLI parameters, environment variables etc.
    // The precedence order for config lookup is as follows:
    // * CLI parameters
    // * Environment variables
    // * Config file
    // If a particular config defined in the file is also defined as an
    // environment variable, the env variable takes precedence.
    // Similarly, if the same is set as a CLI param it replaces the env
    // variable value. The configs are simply arbitrary key/value pairs
    // with slight  structure to it.
    string[] users = config:getGlobalValue("username.instances").split(",");
    string user1Rights = config:getInstanceValue(users[0], "access.rights");
    string user2Rights = config:getInstanceValue(users[1], "access.rights");

    println(users[0] + " has " + user1Rights + " access");
    println(users[1] + " has " + user2Rights + " access");
    // A sample config file looks as follows:
    // username.instances=john,peter
    // [john]
    // access.rights=RW
    // [peter]
    // access.rights=R
    // The same configs can be set using CLI params as follows:
    // -Busername.instances=john,peter -B[john].access.rights=RW
    // -B[peter].access.rights=R
}