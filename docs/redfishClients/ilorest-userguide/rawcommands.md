---
markdown:
  toc:
    hide: false
    depth: 2
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: true
seo:
  title: Raw commands
---

# Raw commands

This section lists the raw HTTP RESTful operations
that can be used through the RESTful Interface Tool.
The commands in this section are the equivalents of HTTP
RESTful **PATCH, GET, POST, PUT, DELETE**, and **HEAD**.

{% admonition type="success" name="TIP" %}

Before performing a `PATCH`, `POST` `PUT` or `DELETE` request against a specific URI,
it is a good practice to verify this URI accepts such a request. This can be easily done
by sending a `rawget` request with the `--getheaders` parameter to extract the `Allow`
header, or a `rawhead` like mentioned in the
[performing actions](/docs/concepts/performing_actions/#performing-actions) section.

The following example lists the allowed operations against the
`/redfish/v1/Systems/1`  URI.

```shell rawget
ilorest rawget --getheaders "/redfish/v1/Systems/1" | jq '.Allow'
"GET, HEAD, PATCH"
```

```shell rawhead
ilorest rawhead "/redfish/v1/Systems/1" |  jq '{"Allow": .Allow'}
{
  "Allow": "GET, HEAD, PATCH"
}

```

{% /admonition %}

## RawDelete Command

### Syntax

rawdelete *[Path] [Optional Parameters]*

### Description

Use this command to perform an HTTP RESTful DELETE command.
Run to delete data from the passed in path.

### Parameters

- **Path**

Pass in the path to point the HTTP RESTful DELETE command.

- **-h, --help**

Including the help flag will display help for the command.

- **--service**

Use this flag to enable service mode and increase the function speed.

### Login Parameters

The following parameters can be included to login to a server in the same
line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the server
in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password
and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and
URL flags to login. Use the provided iLO password corresponding to
the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this
command is completed. Using this flag when not logged in will have no effect.

### Examples

To directly delete a URI run the command specifying a URI to delete.

```shell
iLOrest > rawdelete /redfish/v1/AccountService/Accounts/3/
The account was removed successfully.
```

## RawGet Command

### Syntax

rawget *[Path] [Optional Parameters]*

### Description

Use this command to perform an HTTP RESTful GET command.
Run to retrieve data from the passed in path.

### Parameters

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

Use this flag to silence responses by discarding non-JSON formatted output.
This is helpful when you want to parse the output with a tool like `jq`.

- **-f FILENAME, --filename=FILENAME**

 Write results to the specified file.

- **-b BINFILE, --writebin=BINFILE**

Write the results to the specified file in binary.

- **--service**

Use this flag to enable service mode and increase the function speed.

- **--expand**

Use this flag to expand collection objects using the
expand [odata query](/docs/redfishservices/ilos/supplementdocuments/odataqueryoptions/#odata-query-options)
`?$expand=.`. Refer to the [example](#examples-1) below.

### Login Parameters

The following parameters can be included to login to a
server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the server
in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password
and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and
URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after
this command is completed. Using this flag when not logged in will
have no effect.

### Input

None

### Output

With the `--filename` flag, this command returns an output file
containing the result of the `rawget` command. Otherwise, the output
is displayed on the standard output (stdout).

### Examples

The following example retrieves the properties of the `ComputerSystem`
[data type](/docs/concepts/datatypesandcollections/#data-types),
without and with the `--silent` parameter.

```shell Without --silent option
ilorest  rawget /redfish/v1/Systems/1
iLORest : RESTful Interface Tool version 5.1.0.0
Copyright (c) 2014-2024 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
{
  "@odata.context": "/redfish/v1/$metadata#ComputerSystem.ComputerSystem",
  "@odata.etag": "W/\"19C08B21\"",
  "@odata.id": "/redfish/v1/Systems/1",
  "@odata.type": "#ComputerSystem.v1_17_0.ComputerSystem",
  "Actions": {
    "#ComputerSystem.Reset": {
      "ResetType@Redfish.AllowableValues": [
        "On",
        "ForceOff",
        "GracefulShutdown",
        "ForceRestart",
        "Nmi",
        "PushPowerButton",
        "GracefulRestart"
      ],
      "target": "/redfish/v1/Systems/1/Actions/ComputerSystem.Reset"
    }
  },
  "AssetTag": "",
  "Bios": {
    "@odata.id": "/redfish/v1/systems/1/bios"
  },
  "BiosVersion": "A55 v1.62 (05/22/2024)",
  ...
```

```shell With --silent option
ilorest  rawget --silent /redfish/v1/Systems/1
{
  "@odata.context": "/redfish/v1/$metadata#ComputerSystem.ComputerSystem",
  "@odata.etag": "W/\"19C08B21\"",
  "@odata.id": "/redfish/v1/Systems/1",
  "@odata.type": "#ComputerSystem.v1_17_0.ComputerSystem",
  "Actions": {
    "#ComputerSystem.Reset": {
      "ResetType@Redfish.AllowableValues": [
        "On",
        "ForceOff",
        "GracefulShutdown",
        "ForceRestart",
        "Nmi",
        "PushPowerButton",
        "GracefulRestart"
      ],
      "target": "/redfish/v1/Systems/1/Actions/ComputerSystem.Reset"
    }
  },
  "AssetTag": "",
  "Bios": {
    "@odata.id": "/redfish/v1/systems/1/bios"
  },
  "BiosVersion": "A55 v1.62 (05/22/2024)",
  ...
```

The next example uses the `-f, --filename` option to
save the iLO Dedicated Network port configuration
 in a specific file instead of standard output (stdout).

```shell Redirect output to file
ilorest rawget "/redfish/v1/Managers/1/EthernetInterfaces/1" -f ManagerDedicatedPort.json
iLORest : RESTful Interface Tool version 5.1.0.0
Copyright (c) 2014-2024 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Results written out to 'ManagerDedicatedPort.json'.
```

```json File content (truncated)
{
  "@odata.context": "/redfish/v1/$metadata#EthernetInterface.EthernetInterface",
  "@odata.etag": "W/\"60E028A4\"",
  "@odata.id": "/redfish/v1/Managers/1/EthernetInterfaces/1",
  "@odata.type": "#EthernetInterface.v1_4_1.EthernetInterface",
  "AutoNeg": true,
  "DHCPv4": {
    "DHCPEnabled": false,
    "UseDNSServers": false,
    "UseDomainName": false,
    "UseGateway": false,
    "UseNTPServers": false,
    "UseStaticRoutes": false
  },
  "DHCPv6": {
    "OperatingMode": "Stateful",
    "UseDNSServers": false,
    "UseDomainName": false,
    "UseNTPServers": false,
    "UseRapidCommit": false
  },
  "Description": "Configuration of this Manager Network Interface",
  "FQDN": "ilo-fdz360g10-2.lj.lab",
  "FullDuplex": true,
  "HostName": "ilo-fdz360g10-2",
  "IPv4Addresses": [
    {
      "Address": "192.168.1.44",
      "AddressOrigin": "Static",
      "Gateway": "192.168.1.1",
      "SubnetMask": "255.255.252.0"
    }
  ],
  "IPv4StaticAddresses": [
    {
      "Address": "192.168.1.44",
      "Gateway": "192.168.1.1",
      "SubnetMask": "255.255.252.0"
    }
  ],
    ...
```

Use the `--expand` flag to expand collection URIs and display
properties of collection members. The first tabulation of the
next example retrieves the `ChassisCollection` member list. The
second tabulation expands all members.

```shell Collapsed chassis collection
ilorest rawget /redfish/v1/Chassis
iLORest : RESTful Interface Tool version 5.1.0.0
Copyright (c) 2014-2024 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
{
  "@odata.context": "/redfish/v1/$metadata#ChassisCollection.ChassisCollection",
  "@odata.etag": "W/\"570254F2\"",
  "@odata.id": "/redfish/v1/Chassis",
  "@odata.type": "#ChassisCollection.ChassisCollection",
  "Description": "Computer System Chassis View",
  "Members": [
    {
      "@odata.id": "/redfish/v1/Chassis/1"
    },
    {
      "@odata.id": "/redfish/v1/Chassis/DE040000"
    }
  ],
  "Members@odata.count": 2,
  "Name": "Computer System Chassis"
}
```

```shell Expanded Chassis collection (truncated output)
ilorest rawget --expand /redfish/v1/Chassis
iLORest : RESTful Interface Tool version 5.1.0.0
Copyright (c) 2014-2024 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------

{
  "@odata.context": "/redfish/v1/$metadata#ChassisCollection.ChassisCollection",
  "@odata.etag": "W/\"75C66C5E\"",
  "@odata.id": "/redfish/v1/Chassis",
  "@odata.type": "#ChassisCollection.ChassisCollection",
  "Description": "Computer System Chassis View",
  "Members": [
    {
      "@odata.context": "/redfish/v1/$metadata#Chassis.Chassis",
      "@odata.id": "/redfish/v1/Chassis/1",
      "@odata.type": "#Chassis.v1_23_0.Chassis",
      "AssetTag": "",
      "ChassisType": "RackMount",
      "EnvironmentalClass": "A2",
      "Id": "1",
      ...
   },
   {
      "@odata.etag": "\"4dd1207b\"",
      "@odata.id": "/redfish/v1/Chassis/DE040000",
      "@odata.type": "#Chassis.v1_23_0.Chassis",
      "ChassisType": "StorageEnclosure",
      "Drives": {
        "@odata.id": "/redfish/v1/Chassis/DE040000/Drives"
      },
      "Id": "DE040000",
      ...
    }
  ]
}

```

The following example retrieves the current area of the `HpeServerConfigLock` data type
from an iLO 6 and an iLO 5.

```shell iLO 6
ilorest --nologo rawget /redfish/v1/Systems/1/Bios/Oem/Hpe/Serverconfiglock
{
  "@Redfish.Settings": {
    "@odata.type": "#Settings.v1_0_0.Settings",
    "ETag": "",
    "Messages": [
      {
        "MessageId": "Base.1.0.Success"
      }
    ],
    "SettingsObject": {
      "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/serverconfiglock/settings/"
    },
    "Time": null
  },
  "@odata.context": "/redfish/v1/$metadata#HpeServerConfigLock.HpeServerConfigLock",
  "@odata.etag": "W/\"6F01AAFF9554434343B8389071A82218\"",
  "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/serverconfiglock/",
  "@odata.type": "#HpeServerConfigLock.v1_0_0.HpeServerConfigLock",
  "Id": "serverconfiglock",
  "Name": "Server Configuration Lock Current Settings",
  "NewServerConfigLockPassword": null,
  "Oem": {
    "Hpe": {
      "@odata.type": "#HpeBiosExt.v2_0_0.HpeBiosExt",
      "Links": {
        "BaseConfigs": {
          "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/serverconfiglock/baseconfigs/"
        }
      },
      "SettingsObject": {
        "UnmodifiedETag": "W/\"05052E325E99DFDFDF57497ACD8287FC\""
      }
    }
  },
  "ServerConfigLockChallenge": null,
  "ServerConfigLockDisable": null,
  "ServerConfigLockExcludeCpus": null,
  "ServerConfigLockExcludeDimms": null,
  "ServerConfigLockExcludeFwRevs": null,
  "ServerConfigLockExcludePciSlots": null,
  "ServerConfigLockExcludeSecurity": null,
  "ServerConfigLockLogStored": "False",
  "ServerConfigLockPassword": null,
  "ServerConfigLockState": "Disabled",
  "ServerConfigLockTamperHalt": null,
  "ServerConfigLockTransport": null,
  "ServerConfigLockTransportAudit": null
}
```

```shell iLO 5
ilorest --nologo rawget /redfish/v1/Systems/1/Bios/Serverconfiglock
{
  "@Redfish.Settings": {
    "@odata.type": "#Settings.v1_0_0.Settings",
    "ETag": "",
    "Messages": [
      {
        "MessageId": "Base.1.0.Success"
      }
    ],
    "SettingsObject": {
      "@odata.id": "/redfish/v1/systems/1/bios/serverconfiglock/settings/"
    },
    "Time": null
  },
  "@odata.context": "/redfish/v1/$metadata#HpeServerConfigLock.HpeServerConfigLock",
  "@odata.etag": "W/\"D9232083E398747474E5DBF36B99FF6C\"",
  "@odata.id": "/redfish/v1/systems/1/bios/serverconfiglock/",
  "@odata.type": "#HpeServerConfigLock.v1_0_0.HpeServerConfigLock",
  "Id": "serverconfiglock",
  "Name": "Server Configuration Lock Current Settings",
  "NewServerConfigLockPassword": null,
  "Oem": {
    "Hpe": {
      "@odata.type": "#HpeBiosExt.v2_0_0.HpeBiosExt",
      "Links": {
        "BaseConfigs": {
          "@odata.id": "/redfish/v1/systems/1/bios/serverconfiglock/baseconfigs/"
        }
      },
      "SettingsObject": {
        "UnmodifiedETag": "W/\"3643D683E7449B9B9BC735AC4F1ABEE6\""
      }
    }
  },
  "ServerConfigLockChallenge": null,
  "ServerConfigLockDisable": null,
  "ServerConfigLockExcludeCpus": null,
  "ServerConfigLockExcludeDimms": null,
  "ServerConfigLockExcludeFwRevs": null,
  "ServerConfigLockExcludePciSlots": null,
  "ServerConfigLockExcludeSecurity": null,
  "ServerConfigLockLogStored": "False",
  "ServerConfigLockPassword": null,
  "ServerConfigLockState": "Disabled",
  "ServerConfigLockTamperHalt": null,
  "ServerConfigLockTransport": null
}
```

## RawHead Command

### Syntax

rawhead [Path] [Optional Parameters]

### Description

Use this command to perform an HTTP RESTful HEAD command. Run to retrieve
header data from the passed in path.

### Syntax

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

### Login Parameters

The following parameters can be included to login to a server
in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the
user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password
and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and
URL flags to login. Use the provided iLO password corresponding to the
username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this
command is completed. Using this flag when not logged in will have no effect.

### Input

None

### Output

With the `--filename` flag, this command returns an output file
containing the result of the `rawhead` command.

### Examples

To directly read the head values of a URI run the command specifying
a URI query.

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

## RawPatch Command

### Syntax

rawpatch *[Filename] [Optional Parameters]*

### Description

Use this command to perform an HTTP RESTful Patch request.

### Parameters

Filename parameter example:

```json
{
  "/redfish/v1/path/to/resource1": {"json1": "body1"},
  "/redfish/v1/path/to/resource2": {"json2": "body2"},
  "...": "..."
}
```

- **Filename**

Filename containing the patch payload(s).
One or more patches can be passed in one input file as shown
in the above example.

- **-h, --help**

Including the help flag will display help for the command.

- **--silent**

Use this flag to silence responses by discarding non-JSON formatted output.
This is helpful when you want to parse the output with a tool like `jq`.

- **--response**

Use this flag to return the iLO response body.

- **--getheaders**

Use this flag to return the iLO response headers.

- **--headers=HEADERS**

Use this flag to add extra headers to the request.

Usage: --headers=HEADER:VALUE,HEADER:VALUE

- **--biospassword=BIOSPASSWORD**

Use this flag to supply a BIOS password. Include this flag if
second-level BIOS authentication is needed for the command to execute.

{% admonition type="info" name="NOTE" %}
This flag is used only on iLO 4 systems and not required on iLO 5 and later systems.
{% /admonition %}

- **--service**

Use this flag to enable service mode and increase the function speed.

### Login Parameters

The following parameters can be included to login to a server in the
same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the
user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and
URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL
flags to login. Use the provided iLO password corresponding to the
username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after
this command is completed. Using this flag when not logged in will
have no effect.

### Input

Input the file containing the JSON information you wish to use
for the HTTP RESTful PATCH command.

### Examples

The following example uses the companion file `rawpatch.json` to patch
the `AssetTag` property of the `/redfish/v1/Systems/1` URI. Then, it
refreshes the iLOrest cache with the updated values of `ComputerSystem.` selector.

```shell Commands
ilorest rawpatch rawpatch.json
ilorest get AssetTag --select ComputerSystem.v --refresh
AssetTag=NewAssetTag
```

```json rawpatch file
{
  "/redfish/v1/systems/1":
    {
        "AssetTag": "NewAssetTag"
    }
}
```

The following example disables IPv6
settings and performs an iLO reset to take the modification into account.

```shell Command
ilorest rawpatch rawpatch.json

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

The following example configures the Manager Dedicated Network port with
a static IPv4 and disables DHCPv4. Then resets the iLO to take modifications
into account.

{% admonition type="warning" name="Warning" %}

Upon reset, open sessions (GUI, rest) are closed abruptly. You need to reconnect using the
network information present in the `rawpatch` companion file.

Errors in the `Gateway` or `SubnetMask` may prevent you to reconnect.

Refer to these
[best practices](/docs/redfishclients/ilorest-userguide/examplecommandsscripts/#network-configuration-best-practices)
before changing your iLO IP configuration or, potentially
recover from a misconfiguration.

{% /admonition %}

```shell Set static IPv4
ilorest rawpatch StaticIPv4.json
ilorest iloreset
```

```shell StaticIPv4.json file
cat StaticIPv4.json
{
    "/redfish/v1/Managers/1/EthernetInterfaces/1/": {
        "DHCPv4": {
            "DHCPEnabled": false,
            "UseDNSServers": false,
            "UseDomainName": false,
            "UseGateway": false,
            "UseNTPServers": false,
            "UseStaticRoutes": false
        },
        "IPv4StaticAddresses": [
            {
                "Address": "192.168.1.47",
                "Gateway": "192.168.1.1",
                "SubnetMask": "255.255.252.0"
            }
        ]
    }
}
```

## RawPost Command

### Syntax

rawpost *[Filename] [Optional Parameters]*

### Description

Use this command to perform an HTTP RESTful POST command.

### Parameters

Example Filename parameter JSON file below:

```json
{
  "/redfish/v1/path/to/resource1": {"json1": "body1"},
  "/redfish/v1/path/to/resource2": {"json2": "body2"},
  "...": "..."
}
```

- **Filename**

Include the filename to send a post from the data included in this input file.
One or more posts can be passed in one input file.
A JSON file template is shown on the side.

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

Use this flag to silence responses by discarding non-JSON formatted output.
This is helpful when you want to parse the output with a tool like `jq`.

- **--service**

Use this flag to enable service mode and increase the function speed.

### Login Parameters

The following parameters can be included to login to a server
in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with
the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password
and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with
the user and URL flags to login. Use the provided iLO password
corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server
after this command is completed. Using this flag when not
logged in will have no effect.

### Input

Input the file containing the JSON information you wish to use for
the HTTP RESTful POST command.

### Output

None

### Examples

The following example performs a `ComputerSystem.Reset`
[action](https://servermanagementportal.ext.hpe.com/docs/concepts/performing_actions/).

```shell
ilorest rawpost rawpost.json
```

```json rawpost payload
{
  "/redfish/v1/Systems/1/Actions/ComputerSystem.Reset/":
  {
    "ResetType": "ForceRestart"
  }
}
```

## RawPut Command

### Syntax

rawput *[Filename] [Optional Parameters]*

### Description

Use this command to perform an HTTP RESTful PUT command.

### Parameters

Example input file below:

```json
{
  "/redfish/v1/path/to/resource1": {"json1": "body1"},
  "/redfish/v1/path/to/resource2": {"json2": "body2"},
  "...": "..."
}
```

- **Filename**

Supply a filename containing the payload of the `PUT` request.

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

Use this flag to silence responses by discarding non-JSON formatted output.
This is helpful when you want to parse the output with a tool like `jq`.

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this flag if
second-level BIOS authentication is needed for the command to execute.

{% admonition type="info" name="NOTE" %}
This flag is used only on iLO 4 systems. It is not required
on iLO 5 and later systems.
{% /admonition %}

- **--service**

Use this flag to enable service mode and increase the function speed.

### Login Parameters

The following parameters can be included to login to a server in
the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with
the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the
password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and
URL flags to login. Use the provided iLO password corresponding
to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after
this command is completed. Using this flag when not logged
in will have no effect.

### Input

Input the file containing the JSON information you wish to use
for the HTTP RESTful PUT command.

### Output

None

### Examples

The following example sends a `PUT` request to the
Bios settings area, in order to reset it to its defaults.

```shell rawput command
ilorest rawput put.json
One or more properties were changed and will not take effect until system is reset.
```

```json rawput payload
{
  "/redfish/v1/Systems/1/Bios/Settings/":
  {
    "Attributes": {
      "BaseConfig": "default"
    }
  }
}
```
