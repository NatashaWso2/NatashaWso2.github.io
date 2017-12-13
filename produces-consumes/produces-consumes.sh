# To run the service, put the code in `produces-consumes.bal`
# and use `$BALLERINA_HOME/bin`.
$ ballerina run produces-consumes.bal

#Service deployment:
ballerina: deploying service(s) in 'produces-consumes.bal'
ballerina: started HTTP/WS server connector 0.0.0.0:9090

# To invoke the service, use following client.
$ curl -v http://localhost:9090/infoService -H "Accept:application/xml" -H 
"Content-Type:application/json" -d '{"name":"Ballerina"}'

# Server response:
<name>Ballerina</name>