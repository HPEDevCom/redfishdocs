---
seo:
  title: Raw commands
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

## Raw commands

This section lists the raw HTTP RESTful operations that can be used through the RESTful Interface Tool. The commands in this section are the equivalents of HTTP RESTful **PATCH, GET, POST, PUT, DELETE**, and **HEAD**.

### RawDelete Command

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

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Examples

To directly delete a URI run the command specifying a URI to delete.

```shell
iLOrest > rawdelete /redfish/v1/AccountService/Accounts/3/
The account was removed successfully.
```

### RawGet Command

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

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Input

None

#### Output

With the `--filename` flag, this command returns an output file containing the result of the `rawget` command.

#### Examples

To get the complete JSON response directly from the URI requested run the command specifying a URI to retrieve.

```shell
iLOrest > rawget /redfish/v1/systems/1
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
```

Specify a file to save the response to by including the `-f, --filename` option.

```shell
iLOrest > rawget /redfish/v1/systems/1 -f system.json
[200] The operation completed successfully.
Results written out to 'system.json'.
```

Use the `--expand` flag to expand collection URIs to include the response of collection members. The full response has been truncated for space.

```shell
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
iLOrest > rawget /redfish/v1/systems/ --expand
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
```

### RawHead Command

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

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Input


None

#### Output

With the `--filename` flag, this command returns an output file containing the result of the `rawhead` command.

#### Examples

To directly read the head values of a URI run the command specifying a URI query.

```shell
iLOrest > rawhead /redfish/v1/Systems/1/
[200] The operation completed successfully.
{
  "Content-Length": "0",
  "X_HP-CHRP-Service-Version": "1.0.3",
  "ETag": "W/\"F24B9154\"",
  "Link": "&lt;/redfish/v1/SchemaStore/en/ComputerSystem.json/&gt;; rel=describedby",
  "Allow": "GET, HEAD, POST, PATCH",
  "Date": "Sun, 03 Feb 2019 22:33:10 GMT",
  "OData-Version": "4.0",
  "X-Frame-Options": "sameorigin"
}
```

### RawPatch Command

#### Syntax


rawpatch *[Filename] [Optional Parameters]*

#### Description


Use this command to perform an HTTP RESTful Patch command. Run to send a patch from the data in the input file.

#### Parameters


Filename parameter example:

```json
{
	"path":{"json":"body"},
    "path2": {"json": "body2"},
    "...": "..."
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

:::info NOTE
This flag is used only on iLO 4 systems and not required on iLO 5 systems.
:::

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

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Input

Input the file containing the JSON information you wish to use for the HTTP RESTful PATCH command.

#### Examples

To directly patch to a URI with JSON data run the command supplying a filename with a json payload.

```shell Command
ilorest rawpatch rawpatch.json
The operation completed successfully.
```

```json Companion file
{
  "/redfish/v1/systems/1":
    {
        "AssetTag": "NewAssetTag"
    }
}
```

The following example disables some IPv6 configuration settings and performs an iLO reset to take the modification into account.

```shell Command
ilorest rawpatch rawpatch.json
The operation completed successfully
ilorest iloreset
A management processor reset is in progress.
```

```json Companion file
{
    "/redfish/v1/Managers/1/EthernetInterfaces/1": {
        "DHCPv6": {
            "OperatingMode": "Disabled"
        },
        "Oem": {
            "Hpe": {
                "IPv6": {
                    "DDNSRegistration": false
                }
            }
        }
    }
}
```

### RawPost Command

#### Syntax


rawpost *[Filename] [Optional Parameters]*

#### Description


Use this command to perform an HTTP RESTful POST command. Run to post the data from the passed in path.

#### Parameters


Example Filename parameter JSON file below:

```json
{
	"path":{"json":"body"},
    "path2": {"json": "body2"},
    "...": "..."
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

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Input

Input the file containing the JSON information you wish to use for the HTTP RESTful PUT command.

#### Output


None

#### Examples

To directly post to a URI with JSON data run the command supplying a filename with a json payload.

:::info NOTE

If a full path is not given, the tool searches for the file where the RESTful Interface Tool is initiated.
:::

```shell
iLOrest > rawpost rawpost.json
The operation completed successfully.
```

The following **rawpost.json** file is used in the example above:

```json
{
	"/redfish/v1/Systems/1/Actions/ComputerSystem.Reset/":
	{
		"ResetType": "ForceRestart"
	}
}

```

### RawPut Command

#### Syntax


rawput *[Filename] [Optional Parameters]*

#### Description


Use this command to perform an HTTP RESTful PUT command. Run to retrieve data from the passed in path.

#### Parameters


Example input file below:

```json
{
	"path":{"json":"body"},
    "path2": {"json": "body2"},
    "...": "..."
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

:::info NOTE
This flag is used only on iLO 4 systems. It is not required on iLO 5 and later systems.
:::

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

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Input

Input the file containing the JSON information you wish to use for the HTTP RESTful PUT command.

#### Output


None

#### Examples

To directly put to a URI with JSON data run the command supplying a filename with a json payload.

```shell
iLOrest > rawput put.json
One or more properties were changed and will not take effect until system is reset.
```

This example uses the following **put.json** file:

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
