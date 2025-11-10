<?php
// Version 0.92
/** This PHP script receives RESTful POST events from iLO 4.
*   It reformats the JSON message with indentations and send
*   it to a file in the current directory
**/
include 'functions.php';
//$PHP_INFO = phpinfo() ;


// iLO events will be written to $out_file
$out_file = "ilo_subscription.txt" ;

// Read the Content of the POST message:
$body = file_get_contents("php://input");


// Read the headers values:
$headers = getallheaders() ;

// Get IP address of managed node
$IP_MANAGED = getenv ('REMOTE_ADDR') ;


// Write IP_MANAGED in $outfile:
//file_put_contents($out_file, "$PHP_INFO \n", FILE_APPEND) ;
file_put_contents($out_file, "IP Address of Managed node: $IP_MANAGED \n", FILE_APPEND) ;

// Display headers and values
foreach ($headers as $header => $value) {
    file_put_contents($out_file, "$header: $value \n", FILE_APPEND) ;
}

//Insert new line to separate headers from body
//file_put_contents($out_file, "\n", FILE_APPEND);


// Format message in nice and human readable format
//$body = http_chunked_decode ($body) ;
//$body = decode_chunked ($body) ;
$body = preg_replace( '/[^[:print:]]/', '',$body);
file_put_contents($out_file, json_format($body), FILE_APPEND);

// Write message in file $out_file
file_put_contents($out_file, "\n", FILE_APPEND);


//Insert new line to separate headers from body
file_put_contents($out_file, "\n", FILE_APPEND);

/**
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
In case the subscription is gone, POST the following payload to /redfish/v1/EventService/EventSubscriptions :


{
"Destination": "https://192.168.0.99/MediaKits/listener.php",
"EventTypes": [
"Alert",
"ResourceAdded",
"ResourceRemoved",
"StatusChange"
],
"HttpHeaders": {
"Content-Type":"Application/JSON"
},
"TTLCount": 14400,
"TTLUnits": "minutes",
"Context": "context string",
"Oem": {
"Hp": {
"DeliveryRetryIntervalInSeconds": 30,
"RequestedMaxEventsToQueue": 20,
"DeliveryRetryAttempts": 5,
"RetireOldEventInMinutes": 10
}
}
}



+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
POST the following to /redfish/v1/EventService to trigger an event:

{
  "Action": "SubmitTestEvent",
  "EventType": "StatusChange",
  "EventID": "myEventId",
  "EventTimestamp": "top-of-the-hour",
  "Severity": "OK",
  "Message": "This is a test message",
  "MessageID": "iLOEvents.0.9.ResourceStatusChanged",
  "MessageArgs": [ "arg0", "arg1" ],
  "OriginOfCondition": "/rest/v1/Chassis/1/FooBar"
}
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

**/


?>
