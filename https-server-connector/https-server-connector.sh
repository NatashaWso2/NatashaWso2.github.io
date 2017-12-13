#Run the service
$ ballerina run https-server-connector.bal
ballerina: deploying service(s) in 'https-server-connector.bal'
ballerina: started HTTPS/WSS server connector http-9095

#Invoke the service using the curl command
$ curl -k https://localhost:9095/hello
Response: Successful