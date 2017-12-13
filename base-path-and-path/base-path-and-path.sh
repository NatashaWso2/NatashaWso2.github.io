# Deploy the ballerina service
$ ballerina run base-path-and-path.bal
ballerina: deploying service(s) in '.../base-path-and-path.bal'
ballerina: started HTTP/WS server connector 0.0.0.0:9090

# Send a request to the service using curl
$ curl http://localhost:9090/foo/bar -d "{\"hello\": \"world\"}" -H
"Content-Type: application/json"
{"hello": "world"}