---
title: Raw Commands
tocMaxDepth: 3
---
## Raw commands

This section lists the raw HTTP RESTful operations that can be used through the RESTful Interface Tool. The commands in this section are the equivalents of HTTP RESTful **PATCH, GET, POST, PUT, DELETE**, and **HEAD**.

### RawDelete Command

> RawDelete example commands:

> To directly delete a URI run the command specifying a URI to delete.

<pre>
iLOrest > <span style="color: #01a982; ">rawdelete /redfish/v1/AccountService/Accounts/3/</span>
The account was removed successfully.
</pre>

#### Syntax

rawdelete *[Path] [Optional Parameters]*

#### Description

Use this command to perform an HTTP RESTful DELETE command. Run to delete data from the passed in path.

#### Parameters

- **Path**

Pass in the path to point the HTTP RESTful DELETE command.

- **-h, --help**

Including the help flag will display help for the command.

- **--service**

Use this flag to enable service mode and increase the function speed.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **-privatecert User CA Certificate, --privateusercert**

Specify a user CA certificate file path for certificate based authentication with iLO. 

<aside class="notice">A root user CA key is required.</aside>

- **-certkey Private User Root CA, --userrootcakey**

Specify a user root ca key file path for certificate based authentication with iLO

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-certpass Private User Root CA Password, --userrootcapassword**

Optionally specify a user root ca key file password for a password protected user root CA.

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-cert CA Certificate Bundle, --usercacert**

Optionally specify a file path for the certificate authority bundle location (local repository for trusted CA collection).

<aside class="notice">Providing a private user certificate or user root CA key will override the use of certificate bundles.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs

None

#### Outputs

None

### RawGet Command

> RawGet example commands:
> To get the complete JSON response directly from the URI requested run the command specifying a URI to retrieve.

<pre>
iLOrest > <span style="color: #01a982; ">rawget /redfish/v1/systems/1</span>
[200] The operation completed successfully.
{
  "BiosVersion": "U32 v2.10 (12/14/2018)",
  "SKU": "Kappa",
  "PowerState": "On",
  "Processors": {
    "@odata.id": "/redfish/v1/Systems/1/Processors"
  },
  "SerialNumber": "Kappa",
  "Boot": {
    "BootSourceOverrideTarget": "Cd",
    "BootSourceOverrideTarget@Redfish.AllowableValues": [
      "None",
      "Cd",
      "Hdd",
      "Usb",
      "SDCard",
      "Utilities",
      "Diags",
      "BiosSetup",
      "Pxe",
      "UefiShell",
      "UefiHttp",
      "UefiTarget"
    ],
</pre>

> Specify a file to save the response to by including the `-f, --filename` option.

<pre>
LOrest > rawget /redfish/v1/systems/1 <span style="color: #01a982; ">-f system.json</span>
[200] The operation completed successfully.
Results written out to 'system.json'.
</pre>

> Use the `--expand` flag to expand collection URIs to include the response of collection members. The full response has been truncated for space.

<pre>
iLOrest > rawget /redfish/v1/systems/1 -f system.json
[200] The operation completed successfully.
Results written out to 'system.json'.
iLOrest > rawget /redfish/v1/systems/
[200] The operation completed successfully.
{
  "@odata.type": "#ComputerSystemCollection.ComputerSystemCollection",
  "Description": "Computer Systems view",
  "Members@odata.count": 1,
  "@odata.id": "/redfish/v1/Systems/",
  "@odata.context": "/redfish/v1/$metadata#ComputerSystemCollection.ComputerSystemCollection",
  "Members": [
    {
      "@odata.id": "/redfish/v1/Systems/1/"
    }
  ],
  "@odata.etag": "W/\"AA6D42B0\"",
  "Name": "Computer Systems"
}
iLOrest > rawget /redfish/v1/systems/ <span style="color: #01a982; ">--expand</span>
[200] The operation completed successfully.
{
  "@odata.type": "#ComputerSystemCollection.ComputerSystemCollection",
  "Description": "Computer Systems view",
  "Members@odata.count": 1,
  "@odata.id": "/redfish/v1/Systems/",
  "@odata.context": "/redfish/v1/$metadata#ComputerSystemCollection.ComputerSystemCollection",
  "Members": [
    {
      "BiosVersion": "U32 v2.10 (12/14/2018)",
      "SKU": "Kappa",
      "PowerState": "On",
      "Processors": {
        "@odata.id": "/redfish/v1/Systems/1/Processors/"
      },
      "SerialNumber": "Kappa",
      "Boot": {
        "BootSourceOverrideTarget": "Cd",
        "BootSourceOverrideTarget@Redfish.AllowableValues": [
          "None",
          "Cd",
          "Hdd",
          "Usb",
          "SDCard",
          "Utilities",
          "Diags",
          "BiosSetup",
          "Pxe",
          "UefiShell",
          "UefiHttp",
          "UefiTarget"
        ],
</pre>

#### Syntax

rawget *[Path] [Optional Parameters]*

#### Description

Use this command to perform an HTTP RESTful GET command. Run to retrieve data from the passed in path.

#### Parameters

- **Path**

Pass the path to the `rawget` command to point it at a location.

- **-h, --help**

Including the help flag will display help for the command.

- **--response**

Use this flag to return the iLO response body.

- **--getheaders**

Use this flag to return the iLO response headers.

- **--headers=HEADERS**

Use this flag to add extra headers to the request.

Usage: --headers=HEADER:VALUE,HEADER:VALUE

- **--silent**

Use this flag to silence responses

- **-f FILENAME, --filename=FILENAME**

 Write results to the specified file.

- **-b BINFILE, --writebin=BINFILE**

Write the results to the specified file in binary.

- **--service**

Use this flag to enable service mode and increase the function speed.

- **--expand**

Use this flag to expand the path specified using the expand notation '?$expand=.'

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **-privatecert User CA Certificate, --privateusercert**

Specify a user CA certificate file path for certificate based authentication with iLO. 

<aside class="notice">A root user CA key is required.</aside>

- **-certkey Private User Root CA, --userrootcakey**

Specify a user root ca key file path for certificate based authentication with iLO

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-certpass Private User Root CA Password, --userrootcapassword**

Optionally specify a user root ca key file password for a password protected user root CA.

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-cert CA Certificate Bundle, --usercacert**

Optionally specify a file path for the certificate authority bundle location (local repository for trusted CA collection).

<aside class="notice">Providing a private user certificate or user root CA key will override the use of certificate bundles.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs

None

#### Outputs

File

If you include the `filename` flag, this command will return an output file of the information retrieved when the `rawget` command was executed.

### RawHead Command

> RawHead example commands:

> To directly read the head values of a URI run the command specifying a URI query.

<pre>
iLOrest > <span style="color: #01a982; ">rawhead /redfish/v1/Systems/1/</span>
[200] The operation completed successfully.
{
  "Content-Length": "0",
  "X_HP-CHRP-Service-Version": "1.0.3",
  "ETag": "W/\"F24B9154\"",
  "Link": "</redfish/v1/SchemaStore/en/ComputerSystem.json/>; rel=describedby",
  "Allow": "GET, HEAD, POST, PATCH",
  "Date": "Sun, 03 Feb 2019 22:33:10 GMT",
  "OData-Version": "4.0",
  "X-Frame-Options": "sameorigin"
}
</pre>

#### Syntax

rawhead [Path] [Optional Parameters]

#### Description

Use this command to perform an HTTP RESTful HEAD command. Run to retrieve header data from the passed in path.

#### Syntax

- **Path**

Pass in the path to point the HTTP RESTful HEAD command.

- **-h, --help**

Including the help flag will display help for the command.

- **-f, --filename=Filename**

Include the filename to perform the current operation.

- **--silent**

Use this flag to silence responses.

- **-f FILENAME, --filename=FILENAME**

 Use the provided filename to perform operations.

- **--service**

Use this flag to enable service mode and increase the function speed.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **-privatecert User CA Certificate, --privateusercert**

Specify a user CA certificate file path for certificate based authentication with iLO. 

<aside class="notice">A root user CA key is required.</aside>

- **-certkey Private User Root CA, --userrootcakey**

Specify a user root ca key file path for certificate based authentication with iLO

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-certpass Private User Root CA Password, --userrootcapassword**

Optionally specify a user root ca key file password for a password protected user root CA.

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-cert CA Certificate Bundle, --usercacert**

Optionally specify a file path for the certificate authority bundle location (local repository for trusted CA collection).

<aside class="notice">Providing a private user certificate or user root CA key will override the use of certificate bundles.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs

None

#### Outputs

File

If you specify the `filename` flag, the `rawhead` command will output a file containing the information retrieved when performing the `rawhead` command.

### RawPatch Command

> RawPatch example commands:

> To directly patch to a URI with JSON data run the command supplying a filename with a json payload.

<pre>
iLOrest > <span style="color: #01a982; ">rawpatch rawpatch.json</span>
The operation completed successfully.
</pre>

> The following **rawpatch.json** file was used in the above example:

```json
{
	"/redfish/v1/systems/1":
	{
		"AssetTag": "NewAssetTag"
	}
}

```

#### Syntax

rawpatch *[Filename] [Optional Parameters]*

#### Description

Use this command to perform an HTTP RESTful Patch command. Run to send a patch from the data in the input file.

#### Parameters

> Filename parameter example:

```json
{
	"path":{"json":"body"},
  "path2": {"json": "body2"},
  ...
}
```

- **Filename**

Include the filename to use the data in the input file to send the patch(es). One or more patches can be passed in one input file.
An JSON file template is shown on the side.

- **-h, --help**

Including the help flag will display help for the command.

- **--silent**

Use this flag to silence responses.

- **--response**

Use this flag to return the iLO response body.

- **--getheaders**

Use this flag to return the iLO response headers.

- **--headers=HEADERS**

Use this flag to add extra headers to the request.

Usage: --headers=HEADER:VALUE,HEADER:VALUE

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this flag if second-level BIOS authentication is needed for the command to execute.

<aside class="notice">This flag is used only on iLO 4 systems and not required on iLO 5 systems.</aside>

- **--service**

Use this flag to enable service mode and increase the function speed.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **-privatecert User CA Certificate, --privateusercert**

Specify a user CA certificate file path for certificate based authentication with iLO. 

<aside class="notice">A root user CA key is required.</aside>

- **-certkey Private User Root CA, --userrootcakey**

Specify a user root ca key file path for certificate based authentication with iLO

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-certpass Private User Root CA Password, --userrootcapassword**

Optionally specify a user root ca key file password for a password protected user root CA.

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-cert CA Certificate Bundle, --usercacert**

Optionally specify a file path for the certificate authority bundle location (local repository for trusted CA collection).

<aside class="notice">Providing a private user certificate or user root CA key will override the use of certificate bundles.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs

File

Input the file containing the JSON information you wish to use for the HTTP RESTful PATCH command.

#### Outputs

None


### RawPost Command

> RawPost example commands:

> To directly post to a URI with JSON data run the command supplying a filename with a json payload.

<aside class="notice">
If a full path is not given, the tool searches for the file where the RESTful Interface Tool is initiated.
</aside>

<pre>
iLOrest > <span style="color: #01a982; ">rawpost rawpost.json</span>
The operation completed successfully.
</pre>


> The following **rawpost.json** file is used in the example above:

```json
{
	"/redfish/v1/Systems/1/Actions/ComputerSystem.Reset/":
	{
		"ResetType": "ForceRestart"
	}
}

```



#### Syntax

rawpost *[Filename] [Optional Parameters]*

#### Description

Use this command to perform an HTTP RESTful POST command. Run to post the data from the passed in path.

#### Parameters

> Example Filename parameter JSON file below:

```json
{
	"path":{"json":"body"},
  "path2": {"json": "body2"},
  ...
}
```

- **Filename**

Include the filename to send a post from the data included in this input file. One or more posts can be passed in one input file.
An JSON file template is shown on the side.

- **-h, --help**

Including the help flag will display help for the command.

- **--response**

Use this flag to return the iLO response body.

- **--getheaders**

Use this flag to return the iLO response headers.

- **--headers=HEADERS**

Use this flag to add extra headers to the request.

Usage: --headers=HEADER:VALUE,HEADER:VALUE

- **--silent**

Use this flag to silence responses.

- **--service**

Use this flag to enable service mode and increase the function speed.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **-privatecert User CA Certificate, --privateusercert**

Specify a user CA certificate file path for certificate based authentication with iLO. 

<aside class="notice">A root user CA key is required.</aside>

- **-certkey Private User Root CA, --userrootcakey**

Specify a user root ca key file path for certificate based authentication with iLO

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-certpass Private User Root CA Password, --userrootcapassword**

Optionally specify a user root ca key file password for a password protected user root CA.

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-cert CA Certificate Bundle, --usercacert**

Optionally specify a file path for the certificate authority bundle location (local repository for trusted CA collection).

<aside class="notice">Providing a private user certificate or user root CA key will override the use of certificate bundles.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs

File

Input the file containing the JSON information you wish to use for the HTTP RESTful PUT command.

#### Outputs

None

### RawPut Command

> RawPut example commands:

> To directly put to a URI with JSON data run the command supplying a filename with a json payload.

<pre>
iLOrest > <span style="color: #01a982; ">rawput put.json</span>
One or more properties were changed and will not take effect until system is reset.
</pre>


> This example uses the following **put.json** file:

```json
{
	"/redfish/v1/systems/1/bios/Settings/":
	{
		"Attributes": {
			"BaseConfig": "default"
		}
	}
}

```

#### Syntax

rawput *[Filename] [Optional Parameters]*

#### Description

Use this command to perform an HTTP RESTful PUT command. Run to retrieve data from the passed in path.

#### Parameters

> Example input file below:

```json
{
	"path":{"json":"body"},
  "path2": {"json": "body2"},
  ...
}
```

- **Filename**

Include the filename to send a PUT from the data included in this input file. One or more puts can be passed in one input file.
An JSON file template is shown on the side.

- **-h, --help**

Including the help flag will display help for the command.

- **--response**

Use this flag to return the iLO response body.

- **--getheaders**

Use this flag to return the iLO response headers.

- **--headers=HEADERS**

Use this flag to add extra headers to the request.

Usage: --headers=HEADER:VALUE,HEADER:VALUE

- **--silent**

Use this flag to silence responses.

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this flag if second-level BIOS authentication is needed for the command to execute.

<aside class="notice">This flag is used only on iLO 4 systems and not required on iLO 5 systems.</aside>

- **--service**

Use this flag to enable service mode and increase the function speed.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **-privatecert User CA Certificate, --privateusercert**

Specify a user CA certificate file path for certificate based authentication with iLO. 

<aside class="notice">A root user CA key is required.</aside>

- **-certkey Private User Root CA, --userrootcakey**

Specify a user root ca key file path for certificate based authentication with iLO

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-certpass Private User Root CA Password, --userrootcapassword**

Optionally specify a user root ca key file password for a password protected user root CA.

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-cert CA Certificate Bundle, --usercacert**

Optionally specify a file path for the certificate authority bundle location (local repository for trusted CA collection).

<aside class="notice">Providing a private user certificate or user root CA key will override the use of certificate bundles.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs

File

Input the file containing the JSON information you wish to use for the HTTP RESTful PUT command.

#### Outputs

None
