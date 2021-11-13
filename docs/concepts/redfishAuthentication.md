---
title: Concepts | Redfish authentication
disableLastModified: true
---

# Redfish Authentication and sessions

If you perform an HTTP operation on any other resource other than the root `/redfish/v1` resource, you will receive an `HTTP 401 (Forbidden)` error indicating that you don’t have the authentication needed to access the resource.

> The following shows the error displayed on `GET /redfish/v1/systems` when no authentication is attempted:

```text
401 Forbidden
```

```json
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.4.NoValidSession"
            }
        ]
    }
}
```
## Basic Authentication

The Redfish API allows you to use HTTP Basic Authentication using a valid user name and password.

```shell
curl https://{iLO}/redfish/v1/systems/ -i --insecure -u username:password -L
```

```python
import sys
import redfish

# When running remotely connect using the iLO address, iLO account name, 
# and password to send https requests
iLO_host = "https://{iLO}"
login_account = "admin"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = redfish.RedfishClient(base_url=iLO_host,username=login_account, \
                          password=login_password, default_prefix='/redfish/v1')

# Login into the server and create a session
REDFISH_OBJ.login(auth="basic")

# Logout of the current session
REDFISH_OBJ.logout()
```

## Creating and Using Sessions

For more complex multi-resource operations, you should log in and establish a session. To log in, iLO has a session manager object at the documented URI `/redfish/v1/sessions/`. To create a session, POST a JSON object to the Session manager.

> You must include the HTTP header `Content-Type: application/json`
for all RESTful API operations that include a request body in JSON format.

If the session is created successfully, you receive an HTTP 201 (Created) response from iLO. There will also be two important HTTP response headers.

* **X-Auth-Token** Your session token (string).	This is a unique string for your login session. It must be included as a header in all subsequent HTTP operations in the session.

* **Location** The URI of the newly created session resource.	iLO allocates a new session resource describing your session. This is the URI that you must DELETE against in order to log out. If you lose this location URI, you can find it by crawling the HREF links in the Sessions collection. Store this URI to facilitate logging out.

> It is good practice to save the Location URI of the newly created session.  This is your unique session information and is needed to log out later.

```shell
curl -H "Content-Type: application/json" -H "OData-Version: 4.0" -X POST --data "@data.json" https://{iLO}/redfish/v1/SessionService/Sessions/ --insecure
```

```python
import redfish

# When running remotely connect using the iLO address, iLO account name, 
# and password to send https requests
iLO_host = "https://{iLO}"
login_account = "admin"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = redfish.RedfishClient(base_url=iLO_host,username=login_account, \
                          password=login_password, default_prefix='/redfish/v1')

# Login into the server and create a session
REDFISH_OBJ.login(auth="session")
```

> Contents of data.json

```json
    {
    	"UserName": "<your username>", 
    	"Password": "<your password>"
    }
```

> Successful headers from iLO:

```
Cache-Control: no-cache
Connection: keep-alive
Content-length: 163
Content-type: application/json; charset=utf-8
Date: Tue, 14 Jun 2016 22:23:39 GMT
ETag: W/"C84E3EA9"
Link: </redfish/v1/SessionService/Sessions/{item}/>; rel=self
Location: https://{iLO}/redfish/v1/SessionService/Sessions/{item}/
OData-Version: 4.0
Server: HPE-iLO-Server/1.30
X-Auth-Token: c3c5f437f94bc24428fe930bbf50904f
X-Frame-Options: sameorigin
X_HP-CHRP-Service-Version: 1.0.3
``` 

> Successful response from iLO:

```json
{
  "error": {
    "@Message.ExtendedInfo": [
      {
        "MessageID": "Base.0.10.Created"
      }
    ],
    "code": "iLO.0.10.ExtendedInfo",
    "message": "See @Message.ExtendedInfo for more information."
  }
}
```

# Using a Session

To use a session, simply include the `X-Auth-Token` header supplied by the login response in all REST requests.

## Log Out of a Session

iLO supports a limited number of simultaneous sessions.  If you do not log out of a session it will expire automatically after a time of inactivity.  However, it is good practice to log out when finished with a session.

To log out perform an `HTTP DELETE` to the URI that was returned in the "Location" header when you created the session.

> If you cannot preserve the session URI on login, you may iterate the Sessions collection at /redfish/v1/sessions/.  Be sure to include the X-Auth-Token header.  For each session look for a JSON property called "MySession" that is true. You may then DELETE that URI.

```shell
curl -X "DELETE" https://{iLO}/redfish/v1/SessionService/Sessions/{item}/ -u admin:password --insecure
```

```python
import redfish

# When running remotely connect using the iLO address, iLO account name, 
# and password to send https requests
iLO_host = "https://{iLO}"
login_account = "admin"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = redfish.RedfishClient(base_url=iLO_host,username=login_account, \
                          password=login_password, default_prefix='/redfish/v1')

# Login into the server and create a session
REDFISH_OBJ.login(auth="session")

# Logout of the current session
REDFISH_OBJ.logout()
```
