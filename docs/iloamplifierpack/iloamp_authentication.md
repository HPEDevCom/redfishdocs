---
seo:
  title: Authentication and sessions
disableLastModified: true
toc:
  enable: true
---

# Authentication and Sessions

If you perform an HTTP operation (without providing authentication) on any resource other than the root `/redfish/v1/` resource, you will receive an `HTTP 401 Unauthorized` error indicating that you don’t have the authentication needed to access the resource.

```shell cURL
$ curl https://{iLOAmpServer}/redfish/v1/systems/ -i --insecure -L
```

```python Python
# Perform GET operation against a resource at /redfish/v1/systems
import sys
import redfish

# Specify the remote iLO Amp address
login_host = "https://{iLOAmpServer}"

# Create a REDFISH object
REDFISH_OBJ = redfish.redfish_client(base_url=login_host)

# Do a GET on service root resource
response = REDFISH_OBJ.get("/redfish/v1/systems/")

# Print out the response
sys.stdout.write("%s\n" % response)
```

```http Response headers (Error)
HTTP/1.1 401 Unauthorized
Date: Wed, 18 Apr 2018 08:26:29 GMT
Server: Apache
ETag: W/"0990574D"
Content-Length: 291
X-Frame-Options: sameorigin
Set-Cookie: HttpOnly;Secure
Connection: close
Content-Type: application/json
```

```json JSON response
{
	"@odata.etag" : "W/\"0990574D\"",
	"@odata.type" : "#ExtendedInfo.1.0.0.ExtendedInfo",
	"error" : {
		"@Message.ExtendedInfo" : [{
				"@odata.type" : "#Message.1.0.0.Message",
				"MessageId" : "Base.1.1.NoValidSession"
			}
		],
		"code" : "Wolfram.1.0.ExtendedInfo",
		"message" : "See @Message.ExtendedInfo for more information."
	}
}
```

## Basic Authentication

The RESTful API allows you to use HTTP Basic Authentication using a valid iLO Amplifier Pack user name and password.

```shell cURL
curl https://{iLOAmpServer}/redfish/v1/systems/ --insecure -u username:password -L
```

```python Python
# Perform GET operation against a resource at /redfish/v1/systems/
import sys
import redfish

# When running remotely connect using the address, account name, 
# and password to send https requests
login_host = "https://{iLOAmpServer}"
login_account = "username"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = redfish.redfish_client(base_url=login_host, \
                                     username=login_account, \
                                     password=login_password)

# Login into the server and create a session
REDFISH_OBJ.login(auth="basic")

# Do a GET on a given path
response = REDFISH_OBJ.get("/redfish/v1/systems/")

# Print out the response
sys.stdout.write("%s\n" % response.text)

# Logout of the current session
REDFISH_OBJ.logout()
```

```json JSON response
{
	"@odata.context" : "/redfish/v1/$metadata#ComputerSystemCollection.ComputerSystemCollection",
	"@odata.etag" : "W/\"09FA012B\"",
	"@odata.id" : "/redfish/v1/Systems",
	"@odata.type" : "#ComputerSystemCollection.ComputerSystemCollection",
	"Description" : "System Collection View",
	"Id" : "Systems",
	"Members" : [{
			"@odata.id" : "/redfish/v1/Systems/E1D8B426"
		}, {
			"@odata.id" : "/redfish/v1/Systems/E905C3FF"
		}, {
			"@odata.id" : "/redfish/v1/Systems/EF2BF486"
		}
	],
	"Members@odata.count" : 3,
	"Name" : "ComputerSystemCollection"
}
```

## Creating and Using Sessions

For more complex multi-resource operations, you should log in and establish a session. To log in, iLO Amplifier Pack has a session manager object at the documented URI `/redfish/v1/SessionService/Sessions/`. To create a session POST a JSON object to the Session manager:

<aside class="notice">
You must include the HTTP header <code>Content-Type: application/json</code> for all RESTful API operations that include a request body in JSON format.
</aside>

If the session is created successfully, you receive an `HTTP 201 Created` response from iLO Amplifier Pack. There will also be two important HTTP response headers.

* **X-Auth-Token:**	Your session token (string). This is a unique string for your login session. It must be included as a header in all subsequent HTTP operations in the session.

* **Location:**	The URI of the newly created session resource.	iLO Amplifier Pack allocates a new session resource describing your session. This is the URI that you must DELETE against, in order to log out. If you lose this location URI, you can find it by crawling the HREF links in the Sessions collection. Store this URI to facilitate logging out.

<aside class="warning">
It is good practice to save the Location URI of the newly created session.  This is your unique session information and is needed to log out later.
</aside>

The above process is implemented by the login method provided by REDFISH_OBJ of Redfish Python Library. It automatically stores the session key in REDFISH_OBJ.

```shell cURL
curl https://{iLOAmpServer}/redfish/v1/SessionService/Sessions/
  -X POST
  -H "Content-Type: application/json"
  --data "@data.json"
  --insecure 
  -i
```

```python Python
# Creating a session
import sys
import redfish

# When running remotely connect using the address, account name, 
# and password to send https requests
login_host = "https://{iLOAmpServer}"
login_account = "username"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = redfish.redfish_client(base_url=login_host, \
                                     username=login_account, \
                                     password=login_password)

# Login into the server and create a session
REDFISH_OBJ.login(auth="session")
```
```json data.json file
{
  "UserName": "username",
  "Password": "password"
}
```

```http HTTP Response headers (Success)
HTTP/1.1 201 Created
Date: Wed, 18 Apr 2018 10:05:28 GMT
Server: Apache
Allow: GET, HEAD, POST
OData-Version: 4.0
X-Auth-Token: 4899e7dd7b23d25ec1adefcd92353db76a8cc310d4691797669f9d3b28b818ce
Link: </redfish/v1/SessionService/Sessions/1352958942>; rel=self
Location: https://{iLOAmpServer}/redfish/v1/SessionService/Sessions/1352958942
ETag: W/"822C5474"
Content-Length: 284
X-Frame-Options: sameorigin
Set-Cookie: HttpOnly;Secure
Content-Type: application/json
```

```json JSON response
{
	"@odata.etag" : "W/\"822C5474\"",
	"@odata.type" : "#ExtendedInfo.1.0.0.ExtendedInfo",
	"error" : {
		"@Message.ExtendedInfo" : [{
				"@odata.type" : "#Message.1.0.0.Message",
				"MessageId" : "Base.1.1.Created"
			}
		],
		"code" : "Wolfram.1.0.ExtendedInfo",
		"message" : "See @Message.ExtendedInfo for more information."
	}
}
```

## Using a Session

To use a session, simply include the `X-Auth-Token` header supplied by the login response in all REST requests.

If REDFISH_OBJ of Redfish Python Library is used, then the login method automatically caches the session key and it is included in any future calls made using that object.

## Log Out of a Session

iLO Amplifier Pack supports a limited number of simultaneous sessions.  If you do not log out of a session it will expire automatically after a time of inactivity.  However, it is good practice to log out when finished with a session.

To log out perform an `HTTP DELETE` to the URI that was returned in the "Location" header when you created the session.

<aside class="notice">
If you cannot preserve the session URI on login, you may iterate the Sessions collection at /redfish/v1/SessionService/Sessions/.  Be sure to include the X-Auth-Token header.  For each session, look for a JSON property called "MySession" that is true. You may then DELETE that URI.
</aside>

If REDFISH_OBJ of Redfish Python Library is used, then the logout method delete's the session using the location URI that was previously cached.

```shell cURL
curl https://{iLOAmpServer}/redfish/v1/SessionService/Sessions/{item}/ 
  -X "DELETE" 
  -u username:password
  --insecure
```

```python Python
# Creating and deleting a session
import sys
import redfish

# When running remotely connect using the address, account name, 
# and password to send https requests
login_host = "https://{iLOAmpServer}"
login_account = "username"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = redfish.redfish_client(base_url=login_host, \
                                     username=login_account, \
                                     password=login_password)

# Login into the server and create a session
REDFISH_OBJ.login(auth="session")

# Logout of the current session
REDFISH_OBJ.logout()
```
