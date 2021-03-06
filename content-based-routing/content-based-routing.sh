# Deploy the ballerina service
$ ballerina run content-based-routing.bal
ballerina: deploying service(s) in 'content-based-routing.bal'
ballerina: started HTTP/WS server connector 0.0.0.0:9090

# Send a request to the service using curl
$ curl -v http://localhost:9090/cbr/route -d '{"name" : "sanFrancisco"}'
{
    "name": "San Francisco Test Station,USA",
    "longitude": -122.43,
    "latitude": 37.76,
    "altitude": 150,
    "rank": 1
}

$ curl -v http://localhost:9090/cbr/route -d '{"name" : "london"}'
{
    "name": "London Test Station,England",
    "longitude": -156.49,
    "latitude": 57.76,
    "altitude": 430,
    "rank": 5
}