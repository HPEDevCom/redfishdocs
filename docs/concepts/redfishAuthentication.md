---
seo:
  title: Redfish authentication and sessions
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Redfish authentication and sessions

If you perform an HTTP operation on any other resource than the root `/redfish/v1/` resource, you will receive an `HTTP 401 Unauthorized` error indicating that you don’t have the authentication needed to access the resource.

The following example shows the error displayed on a `GET /redfish/v1/Systems/` request when no authentication is attempted:

```shell cURL
curl --include --insecure     \
     --location https://{IP}/redfish/v1/Systems/
```

```Text Response code
HTTP/1.1 401 Unauthorized
```

```json Response body (iLO 6)
{
  "error": {
    "code": "iLO.0.10.ExtendedInfo",
    "message": "See @Message.ExtendedInfo for more information.",
    "@Message.ExtendedInfo": [
      {
        "MessageId": "Base.1.12.NoValidSession"
      }
    ]
  }
}

```

```json Response body (Superdome Flex 280 RMC)
{
  "error": {
    "code": "Base.1.8.GeneralError",
    "message": "A general error has occurred. See Resolution for information on how to resolve the error.",
    "@Message.ExtendedInfo": [
      {
        "@odata.type": "#Message.v1_1_0.Message",
        "MessageId": "Base.1.8.NoValidSession",
        "Message": "There is no valid session established with the implementation.",
        "MessageArgs": [],
        "Severity": "Critical",
        "MessageSeverity": "Critical",
        "Resolution": "Establish a session before attempting any operations."
      }
    ]
  }
}
```

## Basic authentication

The Redfish API allows you to use HTTP Basic Authentication with a valid Management Controller user name and password. The following example retrieves the `/redfish/v1/Systems/` URI using cURL (with response headers), the HPE Redfish <a href="https://github.com/HewlettPackard/python-ilorest-library" target="_blank"> Python library</a> and the <a href="https://github.com/DMTF/python-redfish-library" target="_blank">DMTF Redfish Python library</a>.

:::warning Warning
The <a href="https://github.com/DMTF/python-redfish-library" target="blank"> DMTF Redfish Python library</a> and the <a href="https://github.com/HewlettPackard/python-ilorest-library" target="_blank"> HPE Redfish Python library</a> cannot co-exist in the same Python environment. You should uninstall one before installing the other one.
:::

```Bash cURL
curl --include --insecure     \
     --user username:password \
     --location https://{IP}/redfish/v1/Systems/
```

```Python DMTF Redfish Python library
# The following example uses the DMTF Redfish Python library.
#
# NOTE: The HPE Redfish Python library cannot co-exist with the
#       DMTF Redfish Python library in the same Python environment.
#       You should uninstall one before installing the other one.
#
# pip uninstall python-ilorest-library
# pip install redfish

# The sources of the DMTF Redfish Python library is on GitHub at
# https://github.com/DMTF/python-redfish-library

import json
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
response = REDFISH_OBJ.get("/redfish/v1/systems/")

# Print out the response
print(json.dumps(RESPONSE.dict, indent=4, sort_keys=True))

# Logout of the current session
REDFISH_OBJ.logout()
```

```Python HPE Redfish Python library
# The following example uses the HPE Redfish Python library.

# NOTE: The HPE Redfish Python library cannot co-exist with the
#       DMTF Redfish Python library in the same Python environment.
#       You should uninstall one before installing the other one.
#
# pip uninstall redfish
# pip install python-ilorest-library

# The sources of the HPE Redfish Python library is on GitHub at
# https://github.com/HewlettPackard/python-ilorest-library

import json
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
response = REDFISH_OBJ.get("/redfish/v1/Systems/")

# Print out the response
print(json.dumps(RESPONSE.dict, indent=4, sort_keys=True))

# Logout of the current session
REDFISH_OBJ.logout()
```

:::info NOTE
cURL does not need a specific logout operation to delete the session opened in the Redfish service. However, you should always make sure Python or PowerShell scripts disconnect completely from the remote Management Controller. Management Controllers have a low limit of simultaneous connections. Reaching this limit prevents other connections.
:::

## Session authentication

For complex multi-resource operations, you should log in and establish a session in the Redfish service session manager object at the [documented URI](/docs/redfishservices/ilos/ilo6/ilo6_105/ilo6_other_resourcedefns105/#sessioncollection) `/redfish/v1/SessionService/Sessions`. To create such a session, POST a JSON object to the session manager.

If the session is created successfully, you receive an HTTP 201 (Created) response from the Management Controller. There will be also two important HTTP response headers.

- **X-Auth-Token** Your session key (token). This is a unique string for your login session. It must be included as a header in all subsequent HTTP operations during the session lifetime.

- **Location** The URI of the newly created session resource. The Management Controller allocates a new session resource describing your session. This is the URI that has to be DELETEd in order to log out.

:::success Tips
It is a good practice to save the `Location` URI of the newly created session as well as the `X-Auth-Token`. This is your unique session information and will be needed later to issue other requests and to log out. High level Redfish libraries (i.e. HPE and DMTF Python Redfish libraries) save these two properties automatically in the Redfish object respectively at `REDFISH_OBJ.session_location`  and `REDFISH_OBJ.session\_key`.
:::

The following example creates a Redfish session using cURL, the DMTF Redfish Python Library and the HPE Python Library.

:::warning Warning
The <a href="https://github.com/DMTF/python-redfish-library" target="_blank"> DMTF</a> and the <a href="https://github.com/HewlettPackard/python-ilorest-library" target="_blank"> HPE </a> Python Redfish libraries cannot co-exist in the same Python environment. They contain identical classes names with different methods.
:::

```bash Session creation with cURL
# The following Bash command creates a Redfish session and populates
# the $TokenAndUrl array with the Session Token and the Location URL.
TokenAndUrl=$(curl --silent --location --insecure --include \
              --request POST  --header 'Content-Type: application/json' \
              --data '@/tmp/data.json' \
              "https://${bmc_ip}/redfish/v1/SessionService/Sessions/" | \
              awk  '/^Location/ || /^X-Auth-Token/ {print $NF}' | \
              sort | tr '\r' ' ')

# content of the data.json data file:
cat data.json
    {
      "UserName": "<your username>", 
      "Password": "<your password>"
    }

```

```Python Session creation with the DMTF Library
# The following example uses the DMTF Python Redfish library
# to create a Redfish session and prints its session key (Token)
# and session URL/URI.

# Then, the session token is used transparently by the Python Redfish 
# to retrieve the content of a specific URI.

# NOTE: The HPE Redfish Python library cannot co-exist with the
#       DMTF Redfish Python library in the same Python environment.
#       You should uninstall one before installing the other one.
#
# pip uninstall python-ilorest-library
# pip install redfish

# The sources of the DMTF Redfish Python library is on GitHub at
# https://github.com/DMTF/python-redfish-library

import re
import json
from redfish import redfish_client

# When running remotely connect using the iLO address, iLO account name, 
# and password to send https requests
bmc_host = "https://{IP-BMC}"
login_account = "admin"
login_password = "password"

# Create a REDFISH object
REDFISH_OBJ = redfish_client(base_url=bmc_host,username=login_account, \
                          password=login_password)

# Login into the server and create a session
REDFISH_OBJ.login(auth="session")

# Session key and location are accessible from the Redfish object
sessionKey = REDFISH_OBJ.get_session_key()
sessionURL = REDFISH_OBJ.get_session_location()  # DMTF returns complete session URL
sessionURI = re.sub(r"https://.*/redfish", "/redfish", sessionURL)

print('Session Key: ' + str(sessionKey))
print('Session URI: ' + str(sessionURI) + "\n" )

# New HTTP requests performed with high level Redfish libraries
# places the Session Key transparently in the request headers.
RESPONSE = REDFISH_OBJ.get(sessionURI)

# Print out the response
print(json.dumps(RESPONSE.dict, indent=4, sort_keys=True))

# Logout of the current session
REDFISH_OBJ.logout()
```

```Python Session creation with the HPE library
# The following example uses the HPE Python Redfish library
# to create a Redfish session and prints its session key (Token)
# and session URI.

# Then, the session token is used transparently by the Python Redfish 
# to retrieve the content of a specific URI.

# NOTE: The HPE Redfish Python library cannot co-exist with the
#       DMTF Redfish Python library in the same Python environment.
#       You should uninstall one before installing the other one.
#
# pip uninstall redfish
# pip install python-ilorest-library

# The sources of the HPE Redfish Python library is on GitHub at
# https://github.com/HewlettPackard/python-ilorest-library

import json
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

# Session key and URI (not URL) are accessible from the Redfish object
sessionKey = REDFISH_OBJ.session_key
sessionURI = REDFISH_OBJ.session_location

print('Session Key: ' + str(sessionKey))
print('Session URI: ' + str(sessionURI) + "\n")

# New HTTP requests performed with high level Redfish libraries places the Session Key transparently in the request headers.
RESPONSE = REDFISH_OBJ.get(sessionURI)

# Print out the response
print(json.dumps(RESPONSE.dict, indent=4, sort_keys=True))

# Logout of the current session
REDFISH_OBJ.logout()
```

Examples of headers and body responses of a successful session creation using the Python scripts of the above example:

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
X-Auth-Token: 1b6cd3e49f2ffbe54347112d7315d8fd
X-Frame-Options: sameorigin
X_HP-CHRP-Service-Version: 1.0.3
```

```json Response Body (iLO 6)
Session Key: 1b6cd3e49f2ffbe54347112d7315d8fd
Session URI: /redfish/v1/SessionService/Sessions/admin0000000063bc4f87659ddce4

{
    "@odata.context": "/redfish/v1/$metadata#Session.Session",
    "@odata.etag": "W/\"21064D3B\"",
    "@odata.id": "/redfish/v1/SessionService/Sessions/admin0000000063bc4f87659ddce4",
    "@odata.type": "#Session.v1_0_0.Session",
    "Description": "Manager User Session",
    "Id": "admin0000000063bc4f87659ddce4",
    "Name": "User Session",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeiLOSession.HpeiLOSession",     
            "@odata.type": "#HpeiLOSession.v2_1_0.HpeiLOSession",
            "AccessTime": "2023-01-09T17:31:51Z",
            "LoginTime": "2023-01-09T17:31:51Z",
            "MySession": true,
            "Privileges": {
                "HostBIOSConfigPriv": true,
                "HostNICConfigPriv": true,
                "HostStorageConfigPriv": true,
                "LoginPriv": true,
                "RemoteConsolePriv": true,
                "SystemRecoveryConfigPriv": true,
                "UserConfigPriv": true,
                "VirtualMediaPriv": true,
                "VirtualPowerAndResetPriv": true,
                "iLOConfigPriv": true
            },
            "UserExpires": "2023-01-09T18:01:51Z",
            "UserIP": "192.168.249.2",
            "UserTag": "REST",
            "UserType": "Local"
        }
    },
    "UserName": "admin"
}
```

```json Response Body (Superdome Flex 280)
{
    "@odata.etag": "\"bb8be42aa0b43c2c9c9a9499c299e3aa\"",
    "@odata.id": "/redfish/v1/SessionService/Sessions/administratorbe3ce14106fb4d02a0880b886ea9a6d5",
    "@odata.type": "#Session.v1_2_1.Session",
    "Id": "administratorbe3ce14106fb4d02a0880b886ea9a6d5",
    "Name": "User Session administratorbe3ce14106fb4d02a0880b886ea9a6d5",
    "Oem": {
        "Hpe": {
            "@odata.type": "#HpeSession.v1_0_0.HpeSession",
            "InitialRole": "Administrator"
        }
    },
    "UserName": "administrator"
}
```

## Session management

This section explains how to manually use the session location and the session key (token) with low level Redfish clients (ex: Postman, cURL). Higher level Redfish clients (iLOrest, PowerShell Cmdlets, Python scripts using Redfish libraries) should not require such manual session management.

### Using a session

To use a newly created session, simply include the `X-Auth-Token` header with its all Redfish requests. The left part of the following example creates a session and saves the token and the session location URL in an array. The middle part of the example includes the `X-Auth-Token` header and its value and retrieves the properties of the just created session location (`${TokenAndUrl[1]}`). The right part shows the response body of an iLO 6 Redfish service.

```bash Session creation with cURL
# The following Bash command creates a Redfish session and populates
# the $TokenAndUrl array with the Session Token and the Location URL.
TokenAndUrl=( $(curl --silent --location --insecure --include \
              --request POST  --header 'Content-Type: application/json' \
              --data '@/tmp/data.json' \
              "https://${bmc_ip}/redfish/v1/SessionService/Sessions/" | \
              awk  '/^Location/ || /^X-Auth-Token/ {print $NF}' | \
              sort | tr  '\r' ' '))

# content of the data.json data file:
cat data.json
    {
      "UserName": "admin", 
      "Password": "<admin password>"
    }
```

```bash Using a session Token with cURL
curl --insecure \
     --header "X-Auth-Token: ${TokenAndUrl[0]}" \
     "${TokenAndUrl[1]}" | \
     jq
```

```json Response Body (iLO 6)
{
    "@odata.context": "/redfish/v1/$metadata#Session.Session",
    "@odata.etag": "W/\"21064D3B\"",
    "@odata.id": "/redfish/v1/SessionService/Sessions/admin0000000063bc4f87659ddce4",
    "@odata.type": "#Session.v1_0_0.Session",
    "Description": "Manager User Session",
    "Id": "admin0000000063bc4f87659ddce4",
    "Name": "User Session",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeiLOSession.HpeiLOSession",     
            "@odata.type": "#HpeiLOSession.v2_1_0.HpeiLOSession",
            "AccessTime": "2023-01-09T17:31:51Z",
            "LoginTime": "2023-01-09T17:31:51Z",
            "MySession": true,
            "Privileges": {
                "HostBIOSConfigPriv": true,
                "HostNICConfigPriv": true,
                "HostStorageConfigPriv": true,
                "LoginPriv": true,
                "RemoteConsolePriv": true,
                "SystemRecoveryConfigPriv": true,
                "UserConfigPriv": true,
                "VirtualMediaPriv": true,
                "VirtualPowerAndResetPriv": true,
                "iLOConfigPriv": true
            },
            "UserExpires": "2023-01-09T18:01:51Z",
            "UserIP": "192.168.249.2",
            "UserTag": "REST",
            "UserType": "Local"
        }
    },
    "UserName": "admin"
}
```

### Disconnect a session

Redfish services supports a limited number of simultaneous user sessions. If you do not properly log out from a session and open other sessions, you may reach this limit and will locked out until an unused session expires. To limit that risk, it is good practice to delete the current session when finished working with it.

To disconnect a session, send a DELETE request to the session location (`/redfish/v1/SessionService/Sessions/{item}`). In the following example user Administrator retrieves the session collection of an iLO 6 Redfish service and disconnect the session of user `student`.

```text generic GET SessionCollection
GET /redfish/v1/SessionService/Sessions/
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#SessionCollection.SessionCollection",
    "@odata.etag": "W/\"554598BA\"",
    "@odata.id": "/redfish/v1/SessionService/Sessions/",
    "@odata.type": "#SessionCollection.SessionCollection",
    "Description": "Manager User Sessions",
    "Name": "Sessions",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeiLOSessionsSummary.HpeiLOSessionsSummary",
            "@odata.type": "#HpeiLOSessionsSummary.v2_0_0.HpeiLOSessionsSummary",
            "Links": {
                "MySession": {
                    "@odata.id": "/redfish/v1/SessionService/Sessions/administrator0000000063bd28ae70dd33bf/"
                }
            }
        }
    },
    "Members": [
        {
            "@odata.id": "/redfish/v1/SessionService/Sessions/student0000000063bd2164790ee259/"
        },
        {
            "@odata.id": "/redfish/v1/SessionService/Sessions/administrator0000000063bd28ae70dd33bf/"
        }
    ],
    "Members@odata.count": 2
}
```

```text generic DELETE session request
DELETE /redfish/v1/SessionService/Sessions/student0000000063bd2164790ee259/
```

:::success TIP
If you failed to save your session location and need to delete your own session, the HPE iLO Redfish service implements the `MySession` link in the `Oem/Hpe` extension of the Session Collection URI (`/redfish/v1/SessionService/Sessions`). It provides as well the `MySession` Boolean property in the Oem extension of the session members.

You can use this information to identify your own session location and disconnect it safely using a DELETE operation.
:::

## Certificate authentication

Some Redfish services like the HPE iLO Redfish service offer the possibility to authenticate users with an X509 certificate instead of username/password credentials. The following steps are required to benefit from this HPE added value feature on iLO based servers. Hints and pointers are provided for performing them via the iLO GUI or Redfish.

- An "iLO Advanced" license is required for this feature (iLO GUI: `Administration` --> `Licensing`)

    The following example shows the generic GET request to retrieve the detail of an HPE iLO license. It shows as well an iLOrest sequence to retrieve the iLO license type using two methods and the corresponding responses.

    :::success TIP
    Refer to the [Odata query options](/docs/redfishservices/ilos/supplementdocuments/odataqueryoptions/#ilo-only-example) section to learn more about the `?only` option mentioned in the following generic GET request.
    :::

    ```text Generic GET iLO License
    GET /redfish/v1/Managers/1/LicenseService/?only
    ```

    ```shell iLOrest
    ilorest login <ilo-ip> -u <ilo-user> -p password
    ilorest ilolicense | grep 'License:' | sort -u
    ilorest get License --select HpeiLOLicense.
    ilorest logout
    ```

    ```text Response body
    License:iLO Advanced
    License=iLO Advanced
    ```

    The following example shows how to upload an HPE iLO license with a generic POST request (and associated body), an iLOrest sequence and then a cURL request.

    ```text Generic POST license request
    POST /redfish/v1/Managers/1/LicenseService/
    BODY:
    {
    "LicenseKey": "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
    }
    ```

    ```bash iLOrest license upload
    ilorest login <ilo-ip> -u <ilo-user> -p password
    ilorest ilolicense XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
    ilorest logout
    ```

    ```bash cURL license upload
    curl --insecure -u username:password  \
         --header "Content-Type: application/json" \
         -X POST --data '{"LicenseKey": "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"}' \
         https://{iLO-IP}/redfish/v1/Managers/1/LicenseService/ 
    ```

- Configure [NTP Server(s)](/docs/redfishservices/ilos/supplementdocuments/managingtime/#configuring-the-network-time-protocol-ntp) (iLO GUI: `iLO [Dedicated|Shared] Network Port` --> `SNTP`)
- Verify the [date and time](/docs/redfishservices/ilos/supplementdocuments/managingtime/#ilo-date-and-time) is accurate (iLO GUI: `Information` --> `iLO Overview` - Main pane: `iLO` - `iLO Date/Time`)
- If not already done, generate an [SSL](/docs/redfishservices/ilos/supplementdocuments/securityservice/#generate-a-certificate-signing-request) iLO Certificate Signing Request (CSR), have a trusted root Certificate Authority (CA) sign it and import the signed SSL certificate in iLO (iLO GUI: `Security` --> `SSL Certificate` --> `Customize Certificate` --> `Import Certificate`)
- Enable "CAC/Smartcard Authentication" (iLO GUI: `Security` --> `CAC/SmartCard`)

    The following example shows a generic PATCH request and the corresponding iLOrest sequence to enable the "CAC/Smartcard Authentication" of an HPE iLO 6.

    ```text generic PATCH request
    PATCH /redfish/v1/Managers/1/SecurityService/CertificateAuthentication/
    BODY: {"CertificateLoginEnabled": true}
    ```

    ```bash iLOrest
    ilorest login <ilo-ip> -u <ilo-user> -p password
    ilorest select HpeCertAuth.
    ilorest set CertificateLoginEnabled --commit
    ilorest get CertificateLoginEnabled
    ilorest logout
    ```

- Create an [iLO user](/docs/redfishservices/ilos/supplementdocuments/managingusers/#creating-a-new-local-user-account) (iLO GUI: `Administration` --> `User Administration` ; Click on the `New` button)
- Generate a signed certificate for the user created in the previous step (generate private key and CSR. Get CSR signed by trusted root CA).

    The following example provides hints to generate a user CSR (and associated private key) and sign it with a local self-signed Certificate Authority. 

    :::warning Warning
    For obvious security reasons it is not recommended to sign CSRs and produce certificates with a self-signed Certificate Authority.
    :::

    ```bash User key and CSR generation example
    # This is a light example to generate a private key and 
    # Certificate Signing Request (CSR) for user student.
    u=student
    openssl req -new -newkey rsa:2048 -nodes -keyout ${u}.key -out ${u}.csr
    ```

    ```bash Sign user CSR with local CA
    # Send the just created CSR to your favorite Certificate Authority (CA)
    # and wait for the signed cerfificate to come back. Or, if you have 
    # your own OpenSSL CA infrastructure,
    # edit the corresponding configuration file and sign it.
    u=student
    vi ${u}.cnf
    ...

    openssl ca -config ${u}.cnf \
               -policy policy_anything \
               -out ${u}.crt -in ${u}.csr
    ```

- Map the just signed user certificate with user in iLO (GUI: `Security` --> `Certificate Mappings` --> `Authorized Certificates` ; select new user --> `Authorize New Certificate` --> `Import Certificate`)

    :::success TIP
    X509 certificate files contain lines of ASCII characters separated by the LineFeed (LF) or CarriageReturn-LineFeed (CR-LF) invisible characters. Those characters are not valid in Redfish POST actions and must be translated into respectively: `\n` and `\r\n`. You can use the following commands to convert X509 files with multiple lines into a suitable JSON body.

    ```bash Stream Editor (sed)
    sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g' certfile.crt > certfile.txt

    # Explanation:
    # :a Creates a label
    # N Joins current line and next one
    # $!ba If we are not at last line, perform the following search/replace pattern
    # \r{0,1} if \r is present or not
    ```

    ```bash awk
    dos2unix certfile.crt 
    awk '{printf "%s\\n", $0}' certfile.crt > certfile.txt
    ```

    :::

    The following example presents the generic POST request to map an iLO user with a signed certificate.

    ```text generic POST request
    POST: /redfish/v1/AccountService/UserCertificateMapping
    BODY: 
    {
        "UserName": "student",
        "Fingerprint": "-----BEGIN CERTIFICATE-----\nMIIDoTCCAokCAQcwDQYJKoZIhvcNAQELBQAwgZYxCzAJBgNVBAYTAkZSMSMwIQYD\nVQQIDBpQcm92ZW5jZS1BbHBlcy1Db3RlIGQnQXp1cjEZMBcGA1UEBwwQU29waGlh\nLUFudGlwb2xpczEMMAoGA1UECgwDSFBFMRAwDgYDVQQLDAdDb21wdXRlMScwJQYD\nVQQDDB50b3lib3guZXRjLmZyLmNvbW0uaHBlY29ycC5uZXQwHhcNMjEwOTE1MTI0\nMDAwWhcNMzEwOTEzMTI0MDAwWjCBlTELMAkGA1UEBhMCRlIxEjAQBgNVBAgMCVJl\nZ2lvblN1ZDEZMBcGA1UEB.....55Ja8g\n-----END CERTIFICATE-----\n\n"
    }
    ```

    ```bash iLOrest
    ilorest rawpost MapUserCertBody.json

    # with body (truncated):
    cat MapUserCertBody.json
    {
        "/redfish/v1/AccountService/UserCertificateMapping": {
            "UserName": "student",
            "Fingerprint": "-----BEGIN CERTIFICATE-----\nMIIEUDCCAzigAwIBAgIBCjANBgkqhkiG9w0BAQsFADCBvTELMAkGA1UEBhMCRlIx\nIzAhBgNVBAgMGlByb3ZlbmNlLUFscGVzLUNvdGUgZCdBenVyMRkwFwYDVQQHDBBT\nb3BoaWEtQW50aXBvbGlzMQwwCgYDVQQKDANIUEUxEDAOBgNVBAsMB0.......jPue+aRVGAfLMwc6/6w6qEPqY4dnep0SGv\nxRp+tQ==\n-----END CERTIFICATE-----"
        }
    }
    ```

- Import the trusted CA certificate used to sign the just created iLO user certificate (iLO GUI: `Security` --> `CAC-SmartCard` --> `Import Trusted CA Certificates`)

    The following example provides the generic POST request and the corresponding iLOrest sequence to upload a trused CA certificate used to sign the certificed iLO user created earlier.

    ```text generic POST request
    POST /redfish/v1/Managers/1/SecurityService/CertificateAuthentication/Actions/HpeCertAuth.ImportCACertificate/
    BODY (truncated): {"Action": "HpeCertAuth.ImportCACertificate", "Certificate": "-----BEGIN CERTIFICATE-----\nMIIDazCCAlOgAwIBAgIQMYguQIQAZI5POAgAEjlMDzANBgkqhkiG9w0BAQsFADA8\nMRMwEQYKCZImiZPyLGQBGRYDbGFiMRI wEAYKCZImiZPyLGQBGRYCbGoxET  .....l4u5\n4WuYIn7HHDxiCCQExkLV\n-----END CERTIFICATE-----\n"}     
    ```

    ```bash iLOrest
    # iLOrest requires a regular X509 certificate file with LF or CR-LF line breaks
    ilorest login <ilo-ip> -u <ilo-user> -p password
    ilorest certificate ca certfile.crt
    ilorest logout
    ```

Once the above steps have been performed, it is possible to log into the remote iLO as certified user `student` using iLOrest or a Python script as shown in the following example.

```bash Certificate authentication with iLOrest
# You can omit the --userpassphrase parameter if the --userkey file is not protected.
ilorest login ilo-hst345g11-9 --usercert student.crt --userkey student.key --userpassphrase "passphrase"
# The following command returns MySession URI to proof that user "student" is logged in.
ilorest get --json   | jq -r '.Oem.Hpe.Links.MySession'
ilorest logout
```

```Python Certificate authentication

# The following example uses the HPE Redfish Python library to connect to a 
# remote iLO as user 'student', with the user's certificate. Morever, this 
# example verifies the validity of the SSL connection.

# NOTE: The HPE Redfish Python library cannot co-exist with the
#       DMTF Redfish Python library in the same Python environment.
#       You should uninstall one before installing the other one.
#
# pip uninstall redfish
# pip install python-ilorest-library

# The sources of the HPE Redfish Python library is on GitHub at
# https://github.com/HewlettPackard/python-ilorest-library

# NOTE: The HPE Redfish Python library uses the 'urllib3.connection.HTTPSConnection' constructor
# described at: https://urllib3.readthedocs.io/en/latest/reference/urllib3.connection.html. Refer
# to this documentation for a description of all possible **client_kwargs that can be used for establishing 
# HTTPS connections.

import sys
import json
from redfish import RedfishClient

# As we'll use the certificate authentication method,
# we just need to supply the remote iLO ip address.
bmc_host = "https://ilo-ip"
login_account = None
login_password = None

# Populate the following variables to use certificate authentication.
ca_cert_data = {}
ca_cert_data["cert_file"] = "c:\\cygwin64\\tmp\\student.crt" # user certificate file (public key) stored in the remote iLO and mapped to user 'student'.
ca_cert_data["key_file"] = "c:\\cygwin64\\tmp\\student.key"  # user certificate secret key associated to the above public key.
ca_cert_data["key_password"] = "PsswdStrong!"                # password to allow the reading of the user secret key.

# Populate the following variables if you want to verify/check the SSL/HTTPS connection between this Redfish client and the remote iLO.
# Set them to None otherwise
#cert_file=None
#key_file=None
#key_password=None
cert_file="c:\\cygwin64\\tmp\\CaCert.crt"          # Certificate Authority certificate of the Authority who signed the iLO's certificate
key_file="c:\\cygwgin64\\tmp\\CaCert.key"          # CA certificate secret key 
key_password="StrongPasswd!"                       # Password to open the above secret key

# Create a Redfish object 
REDFISHOBJ = RedfishClient(base_url=bmc_host, \
    username=login_account, password=login_password, \
    ca_cert_data=ca_cert_data, \
    cert_file=cert_file, key_file=key_file, key_password=key_password)

# Log into remote iLO
REDFISHOBJ.login(auth='certificate')

# Do a GET to proof the successful authentication
response = REDFISHOBJ.get("/redfish/v1/SessionService/Sessions/")
MySessionURI = response.obj["Oem"]["Hpe"]["Links"]["MySession"]["@odata.id"]
MySession = REDFISHOBJ.get(MySessionURI)

# Print out the response
print(json.dumps(MySession.obj, indent=4, sort_keys=True)  + "\n")


# Logout
REDFISHOBJ.logout()
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#Session.Session",
    "@odata.etag": "W/\"CF6156B1\"",
    "@odata.id": "/redfish/v1/SessionService/Sessions/student0000000063ff6930bbfb59a/",
    "@odata.type": "#Session.v1_0_0.Session",
    "Description": "Manager User Session",
    "Id": "student0000000063ff6930bbfb59a",
    "Name": "User Session",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeiLOSession.HpeiLOSession",
            "@odata.type": "#HpeiLOSession.v2_1_0.HpeiLOSession",
            "AccessTime": "2023-03-01T15:03:13Z",
            "LoginTime": "2023-03-01T15:03:12Z",
            "MySession": true,
            "Privileges": {
                "HostBIOSConfigPriv": false,
                "HostNICConfigPriv": false,
                "HostStorageConfigPriv": false,
                "LoginPriv": true,
                "RemoteConsolePriv": false,
                "SystemRecoveryConfigPriv": false,
                "UserConfigPriv": false,
                "VirtualMediaPriv": false,
                "VirtualPowerAndResetPriv": false,
                "iLOConfigPriv": false
            },
            "UserExpires": "2023-03-01T15:33:13Z",
            "UserIP": "192.168.149.3",
            "UserTag": "Web UI",
            "UserType": "Local"
        }
    },
    "UserName": "student"
}

```

:::info NOTE
The DMTF Python Redfish library only provides basic and session authentication methods.
:::
