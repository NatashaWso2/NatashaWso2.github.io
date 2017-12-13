# Deploy the ballerina service
$ ballerina run query-and-path-param.bal
ballerina: deploying service(s) in '.../query-and-path-param.bal'
ballerina: started HTTP/WS server connector 0.0.0.0:9090

# Send a request to the service using curl
$ curl http://localhost:9090/sample/path/value1?bar=value2
{"pathParam": "value1", "queryParam": "value2"}