---
seo:
  title: Concepts | Redfish authentication
disableLastModified: true
toc:
  enable: true
  maxDepth: 2
---

# Redfish authentication and sessions

If you perform an HTTP operation on any other resource other than the root `/redfish/v1` resource, you will receive an `HTTP 401 (Forbidden)` error indicating that you don’t have the authentication needed to access the resource.

The following shows the error displayed on `GET /redfish/v1/systems` when no authentication is attempted:

```Text Response code
401 Forbidden
```

```json Response body
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

The Redfish API allows you to use HTTP Basic Authentication with a valid Baseboard Management Controller user name and password.

```Bash cURL
curl --include --insecure -u username:password --location \
    https://{IP}/redfish/v1/systems
```

```Python HPE Redfish Python Library
# The following example uses the HPE Redfish Python library that
# you can install with:
# pip install python-ilorest-library

# The sources of the HPE Redfish Python library is on GitHub at
# https://github.com/HewlettPackard/python-ilorest-library

import sys
from redfish import RedfishClient

# When running remotely connect using the BMC IP address, BMC account name, 
# and password to send https requests
bmc_host = "https://{IP}"
login_account = "admin"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = RedfishClient(base_url=bmc_host,username=login_account, \
                          password=login_password)

# Login into the server and create a basic authenticated session
REDFISH_OBJ.login(auth="basic")

# Do a GET on a given path
response = REDFISH_OBJ.get("/redfish/v1/systems")

# Print out the response
sys.stdout.write("%s\n" % response)
```

```Python DMTF Redfish Python Library
# The following example uses the DMTF Redfish Python library that
# you can install with:
# pip install redfish

# The sources of the DMTF Redfish Python library is on GitHub at
# https://github.com/DMTF/python-redfish-library

import sys
from redfish import redfish_client

# When running remotely connect using the BMC IP address, BMC account name, 
# and password to send https requests
bmc_host = "https://{IP}"
login_account = "admin"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = redfish_client(base_url=bmc_host,username=login_account, \
                          password=login_password)

# Login into the server and create a basic authenticated session
REDFISH_OBJ.login(auth="basic")

# Do a GET on a given path
response = REDFISH_OBJ.get("/redfish/v1/systems")

# Print out the response
sys.stdout.write("%s\n" % response)
```

## Session authentication

For more complex multi-resource operations, you should log in and establish a session. To log in, iLO has a session manager object at the documented URI `/redfish/v1/sessions`. To create a session, POST a JSON object to the Session manager.

:::attention Note
 You must include the HTTP header `Content-Type: application/json` for all Redfish operations that include a request body in JSON format.
:::

If the session is created successfully, you receive an HTTP 201 (Created) response from the BMC. There will also be two important HTTP response headers.

* **X-Auth-Token** Your session key (token). This is a unique string for your login session. It must be included as a header in all subsequent HTTP operations in the session.

* **Location** The URI of the newly created session resource.	BMC allocates a new session resource describing your session. This is the URI that you must DELETE against in order to log out. If you lose this location URI, you can find it by crawling the HREF links in the Sessions collection. Store this URI to facilitate logging out.

:::success Tip
It is good practice to save the Location URI of the newly created session. This is your unique session information and is needed to log out later. High level Redfish libraries (i.e. HPE Python Redfish library) perform this task automatically in a Redfish object.
:::

```shell cURL
curl --insecure \
    -H "Content-Type: application/json" \
    -H "OData-Version: 4.0" \
    -X POST --data "@data.json" \
    https://{IP}/redfish/v1/SessionService/Sessions/

# content of the data.json data file:
cat data.json
    {
      "UserName": "<your username>", 
      "Password": "<your password>"
    }

```

```Python HPE Redfish Python Library
# The following example uses the HPE Redfish Python library that
# you can install with:
# pip install python-ilorest-library

# The sources of the HPE Redfish Python library is on GitHub at
# https://github.com/HewlettPackard/python-ilorest-library

import sys
from redfish import RedfishClient

# When running remotely connect using the iLO address, iLO account name, 
# and password to send https requests
bmc_host = "https://{IP-BMC}"
login_account = "admin"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = RedfishClient(base_url=bmc_host,username=login_account, \
                          password=login_password)

# Login into the server and create a session
REDFISH_OBJ.login(auth="session")

# Session key and location are accessible from the Redfish object
sessionKey = REDFISH_OBJ.session_key
sessionLocation = REDFISH_OBJ.session_location

print('Session Key: '+str(sessionKey))
print('Session Location: '+str(sessionLocation))

# Do a GET on a given path
response = REDFISH_OBJ.get("/redfish/v1/systems")

# Print out the response
sys.stdout.write("%s\n" % response)
```

```Python DMTF Redfish Python Library
# The following example uses the DMTF Redfish Python library that
# you can install with:
# pip install redfish

# The sources of the DMTF Redfish Python library is on GitHub at
# https://github.com/DMTF/python-redfish-library

import sys
from redfish import redfish_client

# When running remotely connect using the iLO address, iLO account name, 
# and password to send https requests
bmc_host = "https://{IP-BMC}"
login_account = "admin"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = redfish_client(base_url=bmc_host,username=login_account, \
                          password=login_password)

# Login into the server and create a session
REDFISH_OBJ.login(auth="session")

# Session key and location are accessible from the Redfish object
sessionKey = REDFISH_OBJ.get_session_key()
sessionLocation = REDFISH_OBJ.get_session_location()

print('Session Key: '+str(sessionKey))
print('Session Location: '+str(sessionLocation))

# Do a GET on a given path
response = REDFISH_OBJ.get("/redfish/v1/systems")

# Print out the response
sys.stdout.write("%s\n" % response)
```

Successful headers and body response:

```text Response Headers
Cache-Control: no-cache
Connection: keep-alive
Content-length: 163
Content-type: application/json; charset=utf-8
Date: Tue, 14 Jun 2016 22:23:39 GMT
ETag: W/"C84E3EA9"
Link: </redfish/v1/SessionService/Sessions/{item}/>; rel=self
Location: https://{IP-BMC}/redfish/v1/SessionService/Sessions/{item}/
OData-Version: 4.0
Server: HPE-iLO-Server/1.30
X-Auth-Token: c3c5f437f94bc24428fe930bbf50904f
X-Frame-Options: sameorigin
X_HP-CHRP-Service-Version: 1.0.3
```

```json Response Body
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

:::warning Warning
The <a href="https://github.com/DMTF/python-redfish-library" target="_blank"> DMTF</a> and the <a href="https://github.com/HewlettPackard/python-ilorest-library" target="_blank"> HPE </a> Python Redfish libraries cannot co-exist in the same Python environment. They contain identical classes names with different methods.
:::

## Using a Session

To use a session, simply include the `X-Auth-Token` header supplied by the login response in all REST requests.

## Log Out of a Session

iLO supports a limited number of simultaneous sessions.  If you do not log out of a session it will expire automatically after a time of inactivity.  However, it is good practice to log out when finished with a session.

To log out perform an `HTTP DELETE` to the URI that was returned in the "Location" header when you created the session.

:::attention Note
If you cannot preserve the session URI on login, you may iterate the Sessions collection at /redfish/v1/sessions.  Be sure to include the `X-Auth-Token` header.  For each session look for a JSON property called `MySession` that is `true`. You may then DELETE that URI.
:::

```shell cURL
curl --insecure  -u admin:password \
    -X "DELETE" \
    https://{IP-BMC}/redfish/v1/SessionServiceSessions/{item} 
```

```Python HPE Redfish Python Library
# The following example uses the HPE Redfish Python library that
# you can install with:
# pip install python-ilorest-library

# The sources of the HPE Redfish Python library is on GitHub at
# https://github.com/HewlettPackard/python-ilorest-library

from redfish import RedfishClient

# When running remotely connect using the BMC address, BMC account name, 
# and password to send https requests
iLO_host = "https://{IP-BMC}"
login_account = "admin"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = RedfishClient(base_url=bmc_host,username=login_account, \
                          password=login_password)

# Login into the server and create a session
REDFISH_OBJ.login(auth="session")

# Do a GET on a given path
response = REDFISH_OBJ.get("/redfish/v1/systems")

# Print out the response
sys.stdout.write("%s\n" % response)

# Logout of the current session
REDFISH_OBJ.logout()
```

```Python DMTF Redfish Python Library
# The following example uses the DMTF Redfish Python library that
# you can install with:
# pip install redfish

# The sources of the DMTF Redfish Python library is on GitHub at
# https://github.com/DMTF/python-redfish-library

import sys
from redfish import redfish_client

# When running remotely connect using the iLO address, iLO account name, 
# and password to send https requests
bmc_host = "https://{IP-BMC}"
login_account = "admin"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = redfish_client(base_url=bmc_host,username=login_account, \
                          password=login_password)

# Login into the server and create a session
REDFISH_OBJ.login(auth="session")

# Session key and location are accessible from the Redfish object
sessionKey = REDFISH_OBJ.get_session_key()
sessionLocation = REDFISH_OBJ.get_session_location()

print('Session Key: '+str(sessionKey))
print('Session Location: '+str(sessionLocation))

# Do a GET on a given path
response = REDFISH_OBJ.get("/redfish/v1/systems")

# Print out the response
sys.stdout.write("%s\n" % response)

# Logout of the current session
REDFISH_OBJ.logout()
```

:::success Tip
Several other Python examples, including certificate authentication are present on [GitHub](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/add_user_account.py).
:::
