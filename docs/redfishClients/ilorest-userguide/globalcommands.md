---
markdown:
  toc:
    hide: false
    depth: 3
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: true
seo:
  title: Global commands and optional arguments
---

# Global commands and optional arguments

This section lists global optional arguments and global commands that apply to HPE iLOrest as a
whole.

## Global optional arguments

Global optional arguments are passed when invoking an
[interactive mode](/docs/redfishclients/ilorest-userguide/usage/#interactive-mode)
session or at every invocation in
[scriptable mode](/docs/redfishclients/ilorest-userguide/usage/#scriptable-mode).

**-h, --help**

Including the help flag displays the general help for the tool.

**-c, --config=CONFIGFILE**

Use the provided configuration file instead of the
[default](/docs/redfishclients/ilorest-userguide/usage/#configuration-file).

**--cache-dir=CACHEPATH**

Use the provided directory as the location to cache data instead of the default.
The location of default cache directory depends on the operating system
hosting HPE iLOrest. Use `ilorest --help` to discover its location.

**-v, --verbose**

Display verbose information. The `--verbose` option provides a brief
response message from iLO.

**-vv**

The second level or "very verbose" option provides further details regarding
iLO response information.

The extended verbosity option provides the following additional information for
iLO HTTP and the iLO Channel Interface Driver response messages:

- An error response message id (`MessageId`), iLO response error message code identification.
- An error response message description (`Description`), essentially a quick
  synopsis of the issue.
- An error response message (`Message`) describing the reason for the error in
  greater detail. The offending properties are embedded as per the relevant error
  response resource.
- An error response resolution (`Resolution`) describing steps to correct the error.

The following example shows extended verbosity:

```shell
HTTP Response Code: [400]
MessageId: iLO.2.8.PropertyNotWritableOrUnknown
Description: The request included a value for a  read-only or unknown property.
Message: The property "NTPServers" is a read-only property and cannot be assigned a value, or not valid for this resource.
Resolution: If the operation did not complete, remove the property from the request body and resubmit the request.
```

**-d, --debug**

The debug option provides a timestamp of all transmit and response activity
with iLO to a file called `iLORest.log`.
This file is saved in the folder where from you launched the tool.

:::success TIP
Use the debug mode when you have difficulties to write your own Redfish client
in Python or another language. The debug option can help you
understand how to perform specific requests.
:::

The following example shows the content of the `iLORest.log` file:

```shell
2020-06-05 14:20:39,266 INFO    : Not using CA certificate.
2020-06-05 14:20:39,267 INFO    : Initializing no proxy.
2020-06-05 14:20:39,267 DEBUG : HTTP REQUEST: GET
            PATH: /redfish/v1/
            HEADERS: {'OData-Version': '4.0', 'Accept-Encoding': 'gzip'}
            BODY: None
2020-06-05 14:20:39,269 DEBUG : Starting new HTTPS connection (1): 1.83.661.104
2020-06-05 14:20:39,884 DEBUG : https://1.83.661.104:443 "GET /redfish/v1/ HTTP/1.1" 200 None
2020-06-05 14:20:39,885 INFO    : Response Time to /redfish/v1/: 0.615999937057 seconds.
2020-06-05 14:20:39,887 DEBUG : HTTP RESPONSE for /redfish/v1/:
Code:200 OK
Headers:
            Transfer-Encoding: chunked
            ETag: W/"16CA421D"
            Link: <redfish/v1/SchemaStore/en/ServiceRoot.json/>; rel=describedby
            Allow: GET, HEAD
            Cache-Control: no-cache
            Date: Fri, 05 Jun 2020 19:21:15 GMT
            OData-Version: 4.0
            X-Frame-Options: sameorigin
            Content-type: application/json; charset=utf-8

Body Response of /redfish/v1/: {"@odata.context":"/redfish/v1/$metadata#ServiceRoot.ServiceRoot","@odata.etag":"W/\"16CA421D\"","@odata.id":"/redfish/v1/","@odata.type":"#ServiceRoot.v1_5_1.ServiceRoot","Id":"RootService","AccountService":{"@odata.id":"/redfish/v1/AccountService/"},"Chassis":{"@odata.id":"/redfish/v1/Chassis/"},"EventService":{"@odata.id":"/redfish/v1/EventService/"},"JsonSchemas":{"@odata.id":"/redfish/v1/JsonSchemas/"},"Links":{"Sessions":{"@odata.id":"/redfish/v1/SessionService/Sessions/"}},"Managers":{"@odata.id":"/redfish/v1/Managers/"},"Name":"HPE RESTful Root Service","Oem":{"Hpe":{"@odata.context":"/redfish/v1/$metadata#HpeiLOServiceExt.HpeiLOServiceExt","@odata.type":"#HpeiLOServiceExt.v2_3_0.HpeiLOServiceExt","Links":{"ResourceDirectory":{"@odata.id":"/redfish/v1/ResourceDirectory/"}},"Manager":[{"DefaultLanguage":"en","FQDN":"ILOMXQ849018N.americas.hpqcorp.net","HostName":"ILOMXQ849018N","Languages":[{"Language":"en","TranslationName":"English","Version":"2.10"}],"ManagerFirmwareVersion":"2.10","ManagerType":"iLO 5","Status":{"Health":"OK"}}],"Moniker":{"ADVLIC":"iLO Advanced","BMC":"iLO","BSYS":"BladeSystem","CLASS":"Baseboard Management Controller","FEDGRP":"DEFAULT","IPROV":"Intelligent Provisioning","PRODABR":"iLO","PRODFAM":"Integrated Lights-Out","PRODGEN":"iLO 5","PRODNAM":"Integrated Lights-Out 5","PRODTAG":"HPE iLO 5","STDLIC":"iLO Standard","SUMABR":"SUM","SUMGR":"Smart Update Manager","SYSFAM":"ProLiant","VENDABR":"HPE","VENDNAM":"Hewlett Packard Enterprise","WWW":"www.hpe.com","WWWAHSV":"www.hpe.com/servers/ahsv","WWWBMC":"www.hpe.com/info/ilo","WWWDOC":"www.hpe.com/support/ilo-docs","WWWERS":"www.hpe.com/services/getconnected","WWWGLIS":"reserved for liconf URI","WWWIOL":"www.hpe.com/info/insightonline","WWWLIC":"www.hpe.com/info/ilo","WWWLML":"www.hpe.com/support","WWWPASS":"www.hpe.com/support/hpesc","WWWPRV":"www.hpe.com/info/privacy","WWWQSPEC":"www.hpe.com/info/qs","WWWRESTDOC":"www.hpe.com/support/restfulinterface/docs","WWWSUP":"www.hpe.com/support/ilo5","WWWSWLIC":"www.hpe.com/software/SWLicensing"},"Sessions":{"CertCommonName":"ILOMXQ849018N.americas.hpqcorp.net","CertificateLoginEnabled":false,"KerberosEnabled":false,"LDAPAuthLicenced":true,"LDAPEnabled":false,"LocalLoginEnabled":true,"LoginFailureDelay":0,"LoginHint":{"Hint":"POST to /Sessions to login using the following JSON object:","HintPOSTData":{"Password":"password","UserName":"username"}},"SecurityOverride":false,"ServerName":""},"System":[{"Status":{"Health":"OK"}}],"Time":"2020-06-05T19:21:15Z"}},"Product":"ProLiant DL360 Gen10","ProtocolFeaturesSupported":{"ExpandQuery":{"ExpandAll":false,"Levels":true,"Links":false,"MaxLevels":1,"NoLinks":true},"FilterQuery":true,"OnlyMemberQuery":true,"SelectQuery":false},"RedfishVersion":"1.6.0","Registries":{"@odata.id":"/redfish/v1/Registries/"},"SessionService":{"@odata.id":"/redfish/v1/SessionService/"},"Systems":{"@odata.id":"/redfish/v1/Systems/"},"Tasks":{"@odata.id":"/redfish/v1/TaskService/"},"TelemetryService":{"@odata.id":"/redfish/v1/TelemetryService/"},"UUID":"d3372204-1b09-54ea-9aa0-88940c369d59","UpdateService":{"@odata.id":"/redfish/v1/UpdateService/"},"Vendor":"HPE"}
```

**--nostdoutlog**

Disable debug logs to stdout.

**--logdir=LOGPATH**

Use the provided directory as the location for the log file instead of the default.

**--nocache**

During execution the application will temporarily store data only in memory.

**--nologo**

Include to block copyright and logo.

**--notoolbar**

Include to block bottom status bar.

**--proxy=PROXYURL**

Use the provided proxy for communication.

**--redfish**

Use this flag if you wish to enable Redfish only compliance. It is enabled by
default in systems with iLO 5 and above.

:::success TIP
The `--redfish` global option is **only** required for HPE iLO 4.
:::

## Global commands

This section includes commands as well as their usage and examples of general
commands in the RESTful Interface Tool. They include commands used to do things
such as listing help for using commands, viewing, retrieving, modifying, and
committing changes to server properties, authenticating and logging in and out
of the server.

### Help Command

#### Syntax

`help [command] [optional parameters]`

#### Description

Displays command-line syntax and help menus for individual commands. Use this command if you want to know more about a command or need help using a command. Alternatively, you can use the `help` command without specifying a particular command if you wish to see all the available commands and options.

#### Parameters

- Command

Supplying a command to `help` displays the help message corresponding to the given command, as well as the options relating to that particular command.

:::info NOTE
If no command is provided, the `help` command lists and provides a brief description of all available commands.
:::

- **-h, --help**

Running the `help` command with the **&#8209;h** or **&#8209;&#8209;help** parameter displays information on how to use the `help` command.

- **-c FILE, --config=FILE**

Use the provided configuration file instead of the default one.

- **--cache-dir=PATH**

Use the provided directory as the location to cache data (default location: `C:\Users\USERNAME\AppData\Roaming\.ilorest`).

#### Example

The following example uses the iLOrest
[script mode](/docs/redfishclients/ilorest-userguide/usage/#scriptable-mode)
to display embedded help.

```text
ilorest help
usage: iLORest [GLOBAL OPTIONS] [COMMAND] [COMMAND ARGUMENTS] [COMMAND OPTIONS]

iLOrest is a command-line or interactive interface that allows users to manage Hewlett Packard Enterprise products that take advantage of RESTful APIs.

In order to view or manage a system you must first login. You can login using the login command or during execution of any other command.
From here you can run any other commands. To learn more about specific commands, run iLOrest COMMAND -h.

options:
  -h, --help            show this help message and exit
  --config FILE         Use the provided configuration file instead of the default one.
  --cache-dir PATH      Use the provided directory as the location to cache data (default location: /root/.iLORest)
  -v, --verbose         Display verbose information (with increasing level). '-v': Level 1, Logging, Stdout, Stderr. '-vv': Level 2, Extends Level 1 with slightly elaborated iLO and HTTP
                        response message. '-vvv': Level3, Extends Level 2 with message id, validation class, message text with embedded args, and possible resolution/mitigation for iLO
                        responses. Includes HTTP responses. **NOTE 1**: Some responses may only contain limited information from the source.**NOTE 2**: Default level is 0.
  -d, --debug           Display debug information.
  --logdir PATH         Use the provided directory as the location for log file.
  --nostdoutlog         Disable debug logs to stdout.
  --nocache             During execution the application will temporarily store data only in memory.
  --nologo              Include to block copyright and logo.
  --toolbar             Show toolbar at the bottom.
  --notab               Disable tab complete.
  --redfish             Use this flag if you wish to to enable Redfish only compliance. It is enabled by default in systems with iLO5 and above.
  --latestschema        Optionally use the latest schema instead of the one requested by the file. Note: May cause errors in some data retrieval due to difference in schema versions.
  --useproxy URL        Use the provided proxy for communication.
  --redirectconsole [REDIRECT CONSOLE]
                        Optionally include this flag to redirect stdout/stderr console.

Examples:

The following is the standard flow of commands to view system data.
        The first example is each command run individually:

        ilorest login
        ilorest select Bios.
        ilorest get

        The second is the list of all of the commands run at once. First locally, then remotely.
        ilorest get --select Bios.
        ilorest get --select Bios. --url <iLO IP> -u <iLO Username> -p <iLO Password>

BIOS_COMMANDS
biosdefaults              - Set the currently logged in server to default BIOS settings.
bootorder                 - Displays and sets the current boot order.
iscsiconfig               - Displays and configures the current iscsi settings.
setpassword               - Sets the admin password and power-on password

COMMANDS
commit                    - Applies all the changes made during the current session.
detectilo                 - Retrieves the iLO generation of the server.
get                       - Displays the current value(s) of a property(ies) within a selected type.
info                      - Displays detailed information about a property within a selected type.
list                      - Displays the current value(s) of a property(ies) within a selected type including reserved properties.
load                      - Loads the server configuration settings from a file.
login                     - Connects to a server, establishes a secure session, and discovers data from iLO.
logout                    - Ends the current session and disconnects from the server.
pending                   - Show the pending changes that will be applied on reboot.
results                   - Show the results of changes which require a server reboot.
save                      - Saves the selected type's settings to a file.
select                    - Selects the object type to be used.
set                       - Changes the value of a property within the currently selected type.
status                    - Displays all pending changes within a selected type that need to be committed.
types                     - Displays all selectable types within the currently logged in server.
exit                      - Exits from the interactive shell.
help                      - Displays command line syntax and help menus for individual commands. Example: help login


PERSISTENT_MEMORY_COMMANDS
provisionpmm              - Applies specified configuration to PMM.
applypmmconfig            - Applies a pre-defined configuration to PMM.
clearpmmpendingconfig     - Clear pending config tasks
pmmsecuritystate          - Displaying the Security state of dimms.
showpmm                   - Display information about Persistent Memory modules.
showpmmpendingconfig      - Shows the pending configuration for PMM.
showrecommendedpmmconfig  - Show Recommended Configuration

RAW_COMMANDS
rawdelete                 - Raw form of the DELETE command.
rawget                    - Raw form of the GET command.
rawhead                   - Raw form of the HEAD command.
rawpatch                  - Raw form of the PATCH command.
rawpost                   - Raw form of the POST command.
rawput                    - Raw form of the PUT command.

SMART_ARRAY_COMMANDS
clearcontrollerconfig     - Clears smart array controller configuration.
createvolume              - Creates a new volume on the selected controller.
deletevolume              - Deletes volumes from the selected controller.
drivesanitize             - Erase/Sanitize physical drive(s)
factoryresetcontroller    - Factory resets a controller by index or location.
storagecontroller         - Discovers all storage controllers installed in the server and managed by the SmartStorage.

SMART_NIC_COMMANDS
smartnic                  - Discovers all pensando nic installed in the server

iLO_COMMANDS
appaccount                - Creates/Deletes application account, Checks the existence of an application account, Provides details on all app accounts present in the server.
certificate               - Command for importing both iLO and login authorization certificates as well as generating iLO certificate signing requests (CSR)

channelinterface          - Reset CHIF on the current logged in server.
clearrestapistate         - Clears the persistent state of the REST API. Some portions of the API may not be available until after the server reboots.
computeopsmanagement      - Enables the server to be discovered, monitored and managed through ComputeOpsManagement
directory                 - Update directory settings, add/delete directory roles, and test directory settings on the currently logged in server.
disableilofunctionality   - disables iLO's accessibility via the network and resets iLO. WARNING: This should be used with caution as it will render iLO unable to respond to further network operations (including REST operations) until iLO is re-enabled using the RBSU menu.
eskm                      - Command for all ESKM available actions.
ethernet                  - Command for configuring Ethernet Management Controller Interfaces and associated properties
factorydefaults           - Resets iLO to factory defaults. WARNING: user data will be removed use with caution.
fwintegritycheck          - Perform a firmware integrity check on the currently logged in server.
firmwareupdate            - Perform a firmware update on the currently logged in server.
ipprofiles                - This is used to manage hpeipprofile data store.
iloaccounts               - Views/Adds/deletes/modifies an iLO account on the currently logged in server.
backuprestore             - Backup and restore iLO to a server using a .bak file.
ilofederation             - Adds / deletes an iLO federation group on the currently logged in server.
ilolicense                - Adds an iLO license key to the currently logged in server.
iloreset                  - Reset iLO on the current logged in server.
onebuttonerase            - Performs One Button Erase on a system.
reboot                    - Reboot operations for the current logged in server.
sendtest                  - Command for sending various tests to iLO.
serverclone               - Creates a JSON formatted clone file of a system's iLO, Bios, and SSA configuration which can be duplicated onto other systems. User editable JSON file can be manipulated to modify settings before being loaded onto another machine.
serverconfiglock          - The BIOS feature “Server Configuration Lock” supports certain parameters,including a password. This password has a 16 to 31 character limit. “Server Configuration Lock” is not one of the special commands in iLO REST.
serverinfo                - Shows aggregate health status and details of the currently logged in server.
serverstate               - Returns the current state of the server.
serverlogs                - Download and perform log operations.
settwofactorauthentication - Enables the server to use Two factor authentication, monitored
sigrecompute              - Command to recalculate the signature of the computer's configuration.
singlesignon              - Command for all single sign on available actions.
virtualmedia              - Command for inserting and removing virtual media.

iLO_REPOSITORY_COMMANDS
deletecomp                - Deletes components/binaries from the iLO Repository.
downloadcomp              - Downloads components/binaries from the iLO Repository.
flashfwpkg                - Flashes fwpkg components using the iLO repository.
installset                - Manages install sets for iLO.
listcomp                  - Lists components/binaries from the iLO Repository.
maintenancewindow         - Manages the maintenance windows for iLO.
makeinstallset            - Creates install sets for iLO.
taskqueue                 - Manages the update task queue for iLO.
uploadcomp                - Upload components/binary to the iLO Repository.

```

The syntax to get help details for specific command is
'<command> **-h** or **--help**'

The following example uses the iLOrest interactive mode
to display the embedded help of the `login` command.

```shell
ilorest
iLOrest > login -h
usage: login [-h] [--wait_for_otp] [--sessionid SESSIONID] [-u USER] [-p PASSWORD] [-o LOGIN_OTP] [--biospassword BIOSPASSWORD] [--https HTTPS_CERT] [--usercert USER_CERTIFICATE]
             [--userkey USER_ROOT_CA_KEY] [--userpassphrase USER_ROOT_CA_PASSWORD] [--includelogs] [--path PATH] [--force_vnic] [--logout] [--selector SELECTOR] [--no_app_account]
             [--hostappid HOSTAPPID] [--hostappname HOSTAPPNAME] [--salt SALT] [--use_chif]

To login remotely run using iLO url and iLO credentials
        example: login <iLO url/hostname> -u <iLO username> -p <iLO password>

        To login on a local server run without arguments
        example: login

        In iLO 5 and iLO 6 based servers, use `--force_vnic` and iLO credentials to start an
        [in-band](/docs/redfishservices/ilos/supplementdocuments/vnic/#in-band-management)
        session via the Virtual NIC instead of the [CHIF](/docs/etc/glossaryterms/).
        example: login --force_vnic -u iLO-user -p password

        :::info NOTE
        The `--force_vnic` parameter is not relevant in iLO 7 based
        servers (and later) because the CHIF between the OS and
        the iLO has been
        [removed](/docs/redfishservices/ilos/supplementdocuments/securityservice/#transitioning-to-hpe-ilo-7).
        :::

Login using OTP can be done in 2 ways.

         To login implicitly, use the tag --wait_for_otp.
                example: login -u <iLO username> -p <iLO password> --wait_for_otp

         To login explicitly, use the tag -o/--otp and enter OTP after.
                example: login -u <iLO username> -p <iLO password> -o <iLO OTP>

        NOTE: A [URL] can be specified with an IPv4, IPv6, or hostname address.

options:
  -h, --help            show this help message and exit
  --wait_for_otp        Optionally include this flag to implicitly wait for OTP.
  --selector SELECTOR   Optionally include this flag to select a type to run the current command on. Use this flag when you wish to select a type without entering another command, or if you wish to work with a type that is different from the one you currently have selected.
  --no_app_account
                        Include this parameter in order to login to iLO 7 and later with credentials and not application account.

LOGIN OPTIONS:
  Options for logging in to a system.

  --sessionid SESSIONID
                        Use the provided sessionid to login.
  -u USER, --user USER  If you are not logged in yet, including this flag along with the
                        password and URL flags can be used to login to a server in the same command.
  -p PASSWORD, --password PASSWORD
                        Use the provided iLO password to log in.
  -o LOGIN_OTP, --otp LOGIN_OTP
                        Use the provided iLO OTP to log in.
  --biospassword BIOSPASSWORD
                        Select this flag to input a BIOS password. Include this
                        flag if second-level BIOS authentication is needed for the command to execute.
                        This option is only used on Gen 9 systems.
  --https HTTPS_CERT    Use the provided CA bundle or SSL certificate with your login to
                        connect securely to the system in remote mode. This flag has no effect in local mode.
  --usercert USER_CERTIFICATE
                        Specify a user certificate file path for certificate based authentication
                        with iLO.
                        **NOTE**: Inclusion of this argument will force certficate based
                        authentication. A root user certificate authority key or bundle will be required.
  --userkey USER_ROOT_CA_KEY
                        Specify a user root ca key file path for certificate based certificate
                        authentication with iLO. **NOTE 1**: Inclusion of this argument will force certficate based
                        authentication. A root user certificate authority key or bundle will be required.
                        **NOTE 2**: Inclusion of this argument will force certificate based authentication.
                        A user certificate will be required.
                        **NOTE 3**: A user will be prompted for a password if the root certificate authority key
                        is encrypted and '-certpass/--userrootcapassword' is omitted.
  --userpassphrase USER_ROOT_CA_PASSWORD
                        Optionally specify a user root ca key file password for encrypted
                        user root certificate authority keys. **NOTE 1**: Inclusion of this argument will force
                        certficate based authentication. A root user certificate authority key or
                        bundle will be required. **NOTE 2**: The user will be prompted for a password
                        if the user root certificate authority key requires a password
  --includelogs         Optionally include logs in the data retrieval process.
  --path PATH           Optionally set a starting point for data collection during login.
                        If you do not specify a starting point, the default path will be /redfish/v1/.
                        Note: The path flag can only be specified at the time of login.
                        Warning: Only for advanced users, and generally not needed for normal operations.
  --force_vnic          Force login through iLO Virtual NIC. **NOTE** iLO 5 required
  --logout              Logout after the completion of the command.
```

### Login Command

#### Syntax

`login [URL] [Optional Parameters]`

#### Description

Connects to a server, establishes a secure session, and discovers data from
HPE iLO.

:::success TIP

Refer to the
[in-band management](/docs/redfishservices/ilos/supplementdocuments/vnic/#in-band-management)
paragraph for detailed local login examples.

:::

:::info NOTE
In band communication with iLO via the [Virtual NIC](/docs/redfishservices/ilos/supplementdocuments/vnic/) (vNIC), requires this interface to be enabled in both iLO and the operating system. Refer to this [section](/docs/redfishservices/ilos/supplementdocuments/securityservice/#transitioning-to-hpe-ilo-7) to benefit from a seamless authentication of in-band management on iLO 7 based servers.
:::

Login using certificate authentication has following requirements:  

- iLO 5 v2.40 or later
- Set NTP Server on iLO and verify accurate time  
- "iLO Advanced Premium Security Edition" license  
- X509 SSL certificate signed with root CA key
- CAC/Smartcard Authentication Enabled
- Add root CA certificate to iLO
- Map user CA certificate to target iLO management user

#### Usage with other commands

In [out-of-band](/docs/redfishservices/ilos/supplementdocuments/vnic/#out-of-band-management)
(remote) contexts, most of the iLOrest commands allow the opening of a
[Redfish session](/docs/concepts/redfishauthentication/#redfish-authentication-and-sessions)
and the execution of the command using a single iLOrest invocation, using
`--url`, `--user`, and `--password` flags. Optionally include the `--https` flag to validate the SSL certificate along with.

:::success TIP

Failure to formerly logout after using an iLOrest (or another Redfish client)
may saturate iLO with sessions and prevent other clients to login.

You can use the standalone `logout` [command](#logout-command)
or append the `--logout` parameter as shown in the next example.

:::

The following one line example logs into a remote iLO, retrieves its firmware version and logs out.

```shell

ilorest get FirmwareVersion --selector Manager. --url ilo-ip --user ilo-user --password password --json --logout
{
  "FirmwareVersion": "1.12.00 Mar 28 2025"
}
Logging session out.
Logging session out.

```

#### Parameters

- **URL**

Connect to the server located at the provided URL.

- **-h, --help**

Including the help flag will display help for the command.

- **-u, --user User**

Connect to the server as the provided user.

- **-p, --password Password**

Connect to the server with the password corresponding to the given user.

- **-o, --otp**

To enter the One Time Password (OTP) received in the configured Directory
Service (i.e. Microsoft Active Directory) email address. Refer to the
[TFA section](/docs/redfishservices/ilos/supplementdocuments/tfa/) for more detail.

- **--wait\_for\_otp**

To prompt and wait for the One Time Password (OTP) received in the configured
Directory Service (i.e. Microsoft Active Directory) email address to be entered
during implicit login. Refer to the
[TFA section](/docs/redfishservices/ilos/supplementdocuments/tfa/)
for more detail.

:::success TIP

In Linux, if password contains '!' (exclamation), then enclose the password
with single quotation ('). Also, if the password includes special characters,
then escape these characters with '\' (backslash).
Eg: if the password is `test#123`, then type the password as `test\\#123`.

:::

- **--sessionid**

Connect to the server with the already known `sessionid`.

- **--usercert UserCertificate**

Specify a user certificate file path for certificate based
authentication with iLO.

:::info NOTE
The user private key is required.
:::

- **--userkey UserCertKey**

Specify a user private key file path for certificate based authentication
with iLO.

:::info NOTE
If the user private key is password protected, but not included with
`--userpassphrase`, then Urllib3 will automatically request the
password on the command line.
:::

- **--userpassphrase UserPassphrase**

Optionally specify a user key file password for a password protected user key.

- **--force_vnic**

Option to force login through
[iLO Virtual NIC](/docs/redfishservices/ilos/supplementdocuments/vnic/)
in iLO 5 and iLO 6
[in-band](/docs/redfishservices/ilos/supplementdocuments/vnic/#in-band-management)
(local) management contexts.

:::info NOTE

The in-band default communication path of HPE iLO 7 based servers and later is vNIC.
Hence, this parameter cannot be used on such platforms.
:::


- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs.
in the data retrieval process.

:::info NOTE
Use this option to limit long login times.
:::

- **--selector=SELECTOR**

Optionally including the **selector** flag allows you to select a type to run
while running the current command. Use this flag when you wish to select a
type without entering another command, or if you wish to work with a type that
is different from the one you currently have selected.

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a
starting point, the default path will be `/rest/v1`.

:::info NOTE:
The `path` flag can only be specified at the time of login, so if you are
already logged into the server, the `path` flag will not change the path.
If you are entering a command that is not the `login` command, but includes
your login information, you can still specify the path flag there.
:::

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this flag if second-level
BIOS authentication is needed for the command to execute.

:::info NOTE
This option is only used on HPE Gen 9 systems.
:::

- **--no\_app\_account**  

  This option forces in-band management login (via the [Virtual NIC](/docs/redfishservices/ilos/supplementdocuments/vnic/)) with username and password to bypass the use of the application account on iLO 7 based servers. Refer to the [application account](/docs/redfishservices/ilos/supplementdocuments/securityservice/#application-accounts) section for detail.

#### Examples


To open a remote Redfish [session](/docs/concepts/redfishauthentication/#redfish-authentication-and-sessions),
supply the URL, username, and
password for the remote HPE iLO.


```shell
iLOrest > login xx.xx.xx.xx -u username -p password
Discovering data...Done
```

To open a remote Redfish [session](/docs/concepts/redfishauthentication/#redfish-authentication-and-sessions),
using certificates (instead of user/password credentials), supply the URL, user certificate, user
key and user passphrase to the server.

```shell
iLOrest > login xx.xx.xx.xx --usercert cert.pem --userkey userkey.pem --userpassphrase password
Discovering data...Done
```

In the following example, the `--select` option has been included so that
the `Bios` type is selected once the user is logged in. You can prove that
the `Bios` type has indeed been selected when we enter the `select` command
alone.

```shell
iLOrest > login xx.xx.xx.xx -u username -p password --select Bios.
Discovering data...Done
ilorest select
Current selection: Bios.v1_0_0
```

IPv4, IPv6 addresses, or fully qualified hostnames can be specified. IPv6 addresses should use the following
format.

```shell
iLOrest > login [xxxx::xxxx:xxxx:xxxx:xxxx] -u username -p password
Discovering data...Done
```

In the following example, a SSL certificate is included to validate the
HTTPS connection

```shell
iLOrest > login system.domain.net -u username -p password --https \path\to\SSLcert.crt
Discovering data...Done
```

In the following example, the URL, username, and password information are
not specified on the command line nor in the configuration file.

This syntax attempts to login locally in the server's iLO 5 or iLO 6 via the HPE
internal Channel Interface
([CHIF](/docs/etc/glossaryterms/)) or via the Virtual NIC when the server's
iLO is iLO 7 or later, and when iLOrest has been installed with the creation
of an application account. Refer to the
[Transitioning to HPE iLO 7](/docs/redfishservices/ilos/supplementdocuments/securityservice/#transitioning-to-hpe-ilo-7)
documentation section for more information.


```shell
iLOrest > login
Discovering data...Done
```


In iLO 5 and iLO 6 contexts, you can force the use of the
[Virtual NIC](/docs/redfishservices/ilos/supplementdocuments/vnic/)
communication path with
the `--force_vnic` flag and username and password credentials.


```shell
iLOrest > login --force_vnic -u username -p password
Discovering data...Done
```

The following example forces the use of iLO 7 user credentials instead of the default [application account](/docs/redfishservices/ilos/supplementdocuments/securityservice/#application-accounts) mechanism, to create a session based in-band communication. This example is valid only in iLO 7 based servers (and later)

```shell
iLOrest > login --no_app_account -u username -p password
Attempt to login with Vnic...
Discovering data...Done
```


#### To login using OTP

```shell Explicit OTP login
iLOrest > login -u ilo-username -p password -o 987654
Discovering data...Done
```

```shell Implicit OTP login
iLOrest > login -u username -p password --wait_for_otp
One Time Passcode Sent to registered email.
Enter OTP: 234567
Discovering data...Done
```

### Types Command

#### Syntax

`types [Optional Parameters]`

#### Description

Each Redfish resource is associated to a
[data type](/docs/concepts/datatypesandcollections/) also called "resource type" or "type".
The `types` command displays all selectable types available within the
currently logged in server. Data types include a name as well as version information.
They represent the schemas used for the resources and indicate the version of
those schemas. Version information is `major.minor.errata`
(i.e. `SystemRoot.0.9.5`).
Major versions are not backward compatible, but everything else is.

:::info NOTE
Refer to the
[HPE iLO resource map](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_resmap{{process.env.LATEST_FW_VERSION}}/)
for a the list and location of all the possible types.
:::

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--fulltypes**

Optionally include this flag if you would prefer to return the full type
name instead of the simplified versions.

#### Login Parameters

The following parameters can be included to login to a server in the same line
as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and
password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL
flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags
to login. Use the provided iLO password corresponding to the username you
gave to login.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs
in the data retrieval process.

:::info NOTE
Use this option to limit long login times.
:::

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a
starting point, the default path will be `/redfish/v1/`.
Refer to the
[Path Option](/docs/redfishclients/ilorest-userguide/advancedusage/#path-option)
for more information.

:::info NOTE
The `path` flag can only be specified at the time of login, so if you are
already logged into the server, the `path` flag will not change the path.
If you are entering a command that is not the `login` command, but includes
your login information, you can still specify the path flag there.
:::

#### Examples

The following example logs into an iLO based server and lists all the
available [types](/docs/concepts/datatypesandcollections/)
(output truncated). When submitted against a non-iLO based server,
it returns the full type name (not the simplified one).
See example below.

```shell
iLOrest > login ilo-ip -u username -p password
Discovering data...Done
iLOrest > types
Type options:
AccountService.v1_3_0
Bios.v1_0_0
CertificateCollection
Chassis.v1_6_0
ChassisCollection
ComputerSystem.v1_4_0
ComputerSystemCollection
EthernetInterface.v1_4_1
EthernetInterfaceCollection
...
```

The following command simultaneously logs in to the server at the provided URL
with the provided username and password, and lists all the available types
that you can select. The full list has been truncated here for space.

```shell
iLOrest > types --url xx.xx.xx.xx -u username -p password
Discovering data...Done
Type options:
AccountService.v1_3_0
Bios.v1_0_0
CertificateCollection
Chassis.v1_6_0
ChassisCollection
ComputerSystem.v1_4_0
ComputerSystemCollection
EthernetInterface.v1_4_1
EthernetInterfaceCollection
...
```

Adding the `--fulltypes` option returns the full type name instead
of the simplified versions. This is only available against Redfish
conformant services.

```shell
iLOrest > types --fulltypes
Type options:
#AccountService.v1_3_0.AccountService
#Bios.v1_0_0.Bios
#CertificateCollection.CertificateCollection
#Chassis.v1_6_0.Chassis
#ChassisCollection.ChassisCollection
#ComputerSystem.v1_4_0.ComputerSystem
#ComputerSystemCollection.ComputerSystemCollection
#EthernetInterface.v1_4_1.EthernetInterface
#EthernetInterfaceCollection.EthernetInterfaceCollection
#EventDestinationCollection.EventDestinationCollection
...
```

### Select Command

#### Syntax

`select [Type] [Optional Parameters]`

#### Description

Use `select` command to choose one or several
[data types](/docs/concepts/datatypesandcollections/#data-types) to work with. Eligible
types for selection are listed by the `types` [global command](#types-command).

Once a data type or a data type set is selected, it remains selected and used by subsequent commands
until another type is selected.

With no argument the `select` command returns the current selected type(s) or
[error code](/docs/redfishclients/ilorest-userguide/errors/) 24 if no type is selected.

The supplied type string is treated as a regular expression of the form `*[Tt][Yy][Pp[Ee]*` by
the `select` command. This allows the selection of multiple types
having in common a substring.

Refer to the [examples](#examples-3) paragraph for more detail.

#### Usage in other commands

Select a type from another command by including the `--select` or `--selector`
parameter followed by the type to select. Not all commands have the `--select`
parameter; run `command --help` to see available options.

Refer to the `get` [examples](#examples-6) for more detail.

:::warning Warning
The selection of the following data types points to their
[pending/settings area](https://servermanagementportal.ext.hpe.com/docs/concepts/biosdatamodel/#bios-current-and-pending-areas)

The pending/settings area may differ from the running/current area if you have not
cold rebooted the server after a committed modification.

- `Bios.`
- `HpeServerBootSettings.`
- `HpeiSCSISoftwareInitiator.`
- `HpeKmsConfig.`
- `HpeServerConfigLock.`
- `HpeTlsConfig.`
- `SmartStorageConfig.` (iLO 5 only)
- `NetworkAdapter.v1`

The above statement is true for all commands accepting the `--select` parameter, including
the `get` and `list` global commands.

You can use the `pending`
[command](/docs/redfishclients/ilorest-userguide/ilocommands/#pending-command)
to list pending modifications in the mentioned data types.

Use a `rawget` [command](/docs/redfishclients/ilorest-userguide/rawcommands/#examples-1)
to retrieve the current properties of the above data types.
The URIs of the above data types can be quickly determined with the first example in this
[section](/docs/redfishclients/ilorest-userguide/bioscommands/#bios-commands).
:::

#### Parameters

- **Type**

Specify the type you want to select. Omitting a type to select will cause
select to display the currently selected type.

- **-h, --help**

Including the help flag will display help for the command.

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this flag if second-level
BIOS authentication is needed for the command to execute.

:::info NOTE
This option is only used on Gen 9 systems.
:::

#### Login Parameters

The following parameters can be included to login to a server in the same line
as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user
and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL
flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags
to login. Use the provided iLO password corresponding to the username you
gave to login.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs
in the data retrieval process.

:::info NOTE
Use this option to limit long login times.
:::

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a
starting point, the default path will be `/redfish/v1/`.
Refer to the
[Path Option](/docs/redfishclients/ilorest-userguide/advancedusage/#path-option)
for more information.

:::info NOTE
The `path` flag can only be specified at the time of login, so if you are
already logged into the server, the `path` flag will not change the path.
If you are entering a command that is not the `login` command, but
includes your login information, you can still specify the path flag there.
:::

#### Examples

The following example is for a didactic purpose only. It does not have
any practical use case. It selects all types containing string `em`, regardless the
case:

```shell
ilorest select em

ilorest select

Current selection: ComputerSystem.v1_17_0, ComputerSystemCollection.ComputerSystemCollection,
HpeiLOAccountCertificateMap.v1_0_1,
HpeiLOAccountCertificateMapCollection.HpeiLOAccountCertificateMapCollection,
HpeiLOEmbeddedMedia.v2_0_0, HpeiLOActiveHealthSystem.v2_5_0,
Memory.v1_7_1, MemoryCollection.MemoryCollection,
HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection,
HpeRemoteSupport.v2_6_0, MemoryDomainCollection.MemoryDomainCollection,
TelemetryService.v1_0_0
```

The following example simultaneously logs in to a remote iLO at the provided URL
with the provided username and password
and selects the `ComputerSystem.` type.

```shell
iLOrest > select ComputerSystem. --url xx.xx.xx.xx -u username -p password
Discovering data...Done

iLOrest > select
Current selection: ComputerSystem.v1_4_0
```

In the previous example, the trailing dot (`.`) of the selected type
excludes the `ComputerSystemCollection` type.

Excluding the collection associated with a type can be useful
to avoid retrieving properties belonging to both types (i.e. `Name`)
as shown in the next example.

```shell
ilorest list Name @odata.id --json --select ComputerSystem
[
  {
    "@odata.id": "/redfish/v1/Systems/1/",
    "Name": "Computer System"
  },
  {
    "@odata.id": "/redfish/v1/Systems/",
    "Name": "Computer Systems"
  }
]

```

The following example shows how to select all `Bios` subsystems or only `Bios`
by excluding the HPE OEM
<a href="https://developer.hpe.com/blog/why-is-redfish%C2%AE-different-from-other-rest-apis-part-1/#oem-extensions"
target="_blank">extensions</a>.

```shell Select all Bios subsystems
iLOrest > select Bios
iLOrest > select
Current selection: HpeBiosMapping.v2_0_0, Bios.v1_0_0
```

```shell Select only Bios subsystem
iLOrest > select Bios.
iLOrest > select
Current selection: Bios.v1_0_0
```

The following example selects all versions of the standard `Drive` data type,
excluding legacy HPE `SmartStorage` types (they contain a "v2" string) and lists the URIs
of the drives in the system.

:::info NOTE
Systems containing [PLDM](/docs/etc/glossaryterms/#glossary)
capable devices may have several type versions:
One version implemented in the management controller (iLO) and
versions implemented within the devices.
:::

```shell Drive types selection
ilorest select drive.v1
ilorest select
Current selection: Drive.v1_14_0, Drive.v1_16_0

ilorest  list  "@odata.id"  --json
```

```json Output
[
  {
    "@odata.id": "/redfish/v1/Systems/1/Storage/DE07C000/Drives/2"
  },
  {
    "@odata.id": "/redfish/v1/Systems/1/Storage/DE07C000/Drives/1"
  },
  {
    "@odata.id": "/redfish/v1/Systems/1/Storage/DE07C000/Drives/0"
  },
  {
    "@odata.id": "/redfish/v1/Chassis/2/Drives/8/"
  },
  {
    "@odata.id": "/redfish/v1/Chassis/2/Drives/6/"
  },
  {
    "@odata.id": "/redfish/v1/Chassis/2/Drives/3/"
  },
  {
    "@odata.id": "/redfish/v1/Chassis/2/Drives/9/"
  },
  {
    "@odata.id": "/redfish/v1/Chassis/2/Drives/7/"
  },
  {
    "@odata.id": "/redfish/v1/Chassis/2/Drives/10/"
  },
  {
    "@odata.id": "/redfish/v1/Chassis/2/Drives/5/"
  },
  {
    "@odata.id": "/redfish/v1/Chassis/2/Drives/1/"
  },
  {
    "@odata.id": "/redfish/v1/Chassis/2/Drives/2/"
  },
  {
    "@odata.id": "/redfish/v1/Chassis/2/Drives/4/"
  }
]
```

iLOrest caches data once a type has been selected for the first time.
To refresh a type with the most up to date information use the `--refresh` option.

```shell
iLOrest > select ComputerSystem.
iLOrest > get Oem/Hpe/PowerOnMinutes
Oem=
     Hpe=
          PowerOnMinutes=814088

iLOrest > select ComputerSystem. --refresh
iLOrest > get Oem/Hpe/PowerOnMinutes
Oem=
     Hpe=
          PowerOnMinutes=814089
```

:::success TIP
Use the `select <type> --refresh` command to delete/remove changed
settings that have not been [committed](#commit-command), as shown in
the next example.
:::

```shell
ilorest set LocationIndicatorActive=True
Added the following patch:
{
  "LocationIndicatorActive": true
}

ilorest status

Current changes found:
ComputerSystem.v1_17_0(/redfish/v1/Systems/1/) (Currently selected)
        LocationIndicatorActive=True

ilorest select ComputerSystem. --refresh

Padbol# ilorest status
No changes found

```

### List Command

#### Syntax

`list [Property(s)] [Optional Parameters]`

#### Description

Use this command when a [data type](/docs/concepts/datatypesandcollections/) has already
been [selected](#select-command)
or supplied with the `--select` parameter.

Run without any argument, `list` displays the value(s) of all the properties of the selected
[data type](/docs/concepts/datatypesandcollections/), including
[reserved properties](#reserved-properties). The output can be in human-readable or JSON format.

:::info NOTE

- Supplying a list of nonexistent properties in the selected
type returns [iLOrest error](/docs/redfishclients/ilorest-userguide/errors/) 6:
`No get contents found for selected type.`

- Supplying a list of properties with at least one existent among them
  does not return any error. Nonexistent properties are silently
  discarded and only valid properties are processed.
- Identical property values of similar objects are only printed once.

Refer to the [example](#examples-4) section below for illustration.
:::

##### Reserved properties

The term **_reserved properties_** refers to "meta properties" like `@odata.*` or resources like `Actions`,
`Links` that are more useful for Redfish clients than for human being.

The `list` command displays reserved properties, while the `get`
[command](#get-command) does not.

:::success TIP

As the list of reserved properties is evolving over time, it is not possible to provide
the exhaustive list. However, you can get an idea of that list by comparing the output
of the `list` and the `get` commands against the `Manager` data type as shown in
the next example.

```shell list and get Manager properties
ilorest list --json --select Manager. > listManager.json
ilorest get  --json --select Manager. > getManager.json
```

```shell Output difference (truncated)
diff listManager.json getManager.json

2,14d1
<   "@odata.context": "/redfish/v1/$metadata#Manager.Manager",
<   "@odata.etag": "W/\"99020AD4\"",
<   "@odata.id": "/redfish/v1/Managers/1/",
<   "@odata.type": "#Manager.v1_5_1.Manager",
<   "Actions": {
<     "#Manager.Reset": {
<       "ResetType@Redfish.AllowableValues": [
<         "ForceRestart",
<         "GracefulRestart"
<       ],
<       "target": "/redfish/v1/Managers/1/Actions/Manager.Reset/"
<     }
<   },
....
205,248d133
<       "Links": {
<         "ActiveHealthSystem": {
<           "@odata.id": "/redfish/v1/Managers/1/ActiveHealthSystem/"
<         },
<         "BackupRestoreService": {
<           "@odata.id": "/redfish/v1/Managers/1/BackupRestoreService/"
<         },
<         "DateTimeService": {
<           "@odata.id": "/redfish/v1/Managers/1/DateTime/"
<         },
<         "EmbeddedMediaService": {
<           "@odata.id": "/redfish/v1/Managers/1/EmbeddedMedia/"
<         },
<         "FederationDispatch": {
<           "extref": "/dispatch"
<         },
...
```

:::

#### Parameters

- **Property(s)**

Supplying a property or a list of properties causes `list` to display the
current value for that particular property or properties.

:::info NOTE

- Supplying a list of nonexistent properties in the selected
type returns [iLOrest error](/docs/redfishclients/ilorest-userguide/errors/) 6:
`No get contents found for selected type.`

- Supplying a list of properties with at least one existent among them
  does not return any error. Nonexistent properties are silently
  discarded and only valid properties are processed.

- Identical property values of similar objects are only printed once.

Refer to the [example](#examples-4) section below for illustration.
:::

- **-h, --help**

Including the help flag will display help for the command.

- **--selector=SELECTOR** or **--select SELECTOR**

The `--selector` or `--select` parameter allows you to select
a [data type](/docs/concepts/datatypesandcollections/) prior to
run the command. This is a quick way to select a type and
work on a different type
than the one already selected.

- **--filter [FILTER\_ATTRIBUTE=FILTER\_VALUE]**

Optionally provide a filter `key=value` to select only properties matching this filter. Refer to the
[Filter Option](/docs/redfishclients/ilorest-userguide/advancedusage/#filter-option)
for more information and examples.

- **-j, --json**

Include this flag if you wish to change the displayed output to
JSON format. Preserving the JSON data structure can make the information
easier to parse.

#### Login Parameters

The following parameters can be included to login to a server in the same line
as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and
password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and
URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags
to login. Use the provided iLO password corresponding to the username you gave
to login.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include
logs in the data retrieval process.

:::info NOTE
Use this option to limit long login times.
:::

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a
starting point, the default path will be `/redfish/v1/`.
Refer to the [Path Option](/docs/redfishclients/ilorest-userguide/advancedusage/#path-option)
for more information.

:::info NOTE
The `path` flag can only be specified at the time of login, so if you are
already logged into the server, the `path` flag will not change the path.
If you are entering a command that is not the `login` command, but includes
your login information, you can still specify the path flag there.
:::

- **--logout**

Optionally include the logout flag to log out of the server after this
command is completed. You need to be logged in to use this flag.

#### Examples

The following example lists all the properties of the `Bios` data type, in human readable
and JSON formats.

```shell Interactive human readable (truncated)
iLOrest > select Bios.
iLOrest > list
@odata.context=/redfish/v1/$metadata#Bios.Bios
@odata.etag=W/"02E13BA89B606F6F6F02950EB3CA676D"
@odata.id=/redfish/v1/systems/1/bios/settings/
@odata.type=#Bios.v1_0_0.Bios
AcpiHpet=Enabled
AcpiRootBridgePxm=Enabled
AcpiSlit=Enabled
AdjSecPrefetch=Enabled
AdminEmail=""
AdminName=""
...
```

```json JSON format (truncated)
iLOrest > select ComputerSystem.
iLOrest > list --json
{
  "@odata.context": "/redfish/v1/$metadata#ComputerSystem.ComputerSystem",
  "@odata.etag": "W/\"9D48B4B7\"",
  "@odata.id": "/redfish/v1/Systems/1/",
  "@odata.type": "#ComputerSystem.v1_4_0.ComputerSystem",
  "Actions": {
    "#ComputerSystem.Reset": {
      "ResetType@Redfish.AllowableValues": [
        "On",
        "ForceOff",
        "ForceRestart",
        "Nmi",
        "PushPowerButton"
      ],
      "target": "/redfish/v1/Systems/1/Actions/ComputerSystem.Reset/"
    }
  },
  "AssetTag": "",
  "Bios": {
    "@odata.id": "/redfish/v1/systems/1/bios/"
  },
  "BiosVersion": "U32 v2.10 (12/14/2018)",
  "Boot": {
    "BootSourceOverrideTarget": "None",
    "BootSourceOverrideTarget@Redfish.AllowableValues": [
      "None",
      "Cd",
      "Hdd",
...
```

To return specific properties or sub-properties value, include them as arguments.
If the property you want to return is a sub-property add them in the form
`Property/Sub-property`.

:::success Best Practice
Although iLOrest arguments are not case-sensitive, it is a
best practice to respect the case sensitivity of arguments. You may
have to use Redfish clients that request the respect of the case.
:::

The following example retrieves three properties from the `ComputerSystem`
[type](/docs/concepts/datatypesandcollections/).
The `AssetTag` property exists, but has an empty value ("").

```shell
iLOrest > list @odata.id Boot/BootSourceOverrideMode AssetTag --select ComputerSystem.
@odata.id=/redfish/v1/Systems/1/
AssetTag=""
Boot=
      BootSourceOverrideMode=UEFI
```

The following example tries retrieves a non-existing property (verbose mode)
in the `ComputerSystem` type.

```shell
ilorest -vv list foo --select ComputerSystem.
Selected option(s): #ComputerSystem.v1_17_0.ComputerSystem

Error: No get contents found for selected type.
iLORest return code: 6
```

The following example asks, in verbose mode, for the values of an existing
(`PowerState`) and a non-existing (`foo`) properties in the `ComputerSystem.` subsystem.

```shell
ilorest -vv list PowerState foo --select ComputerSystem. --json
Selected option(s): #ComputerSystem.v1_17_0.ComputerSystem
{
  "PowerState": "On"
}
iLORest return code: 0

```

The following example selects the `Bios` data type before
asking, in verbose mode, for the values of properties belonging to another
data type (`Memory.`). As a consequence, iLOrest returns an error.

```shell
ilorest select Bios.
ilorest -v list CapacityMiB Name Vend --json

Selected option(s): #Bios.v1_0_0.Bios

Error: No get contents found for selected type.
iLORest return code: 6
```

The following example selects the `Bios.` type
and then switches to the `Memory.` type to retrieve
the values of three properties. However, one of
them (`Vend`) is not spelled correctly. As a result,
only valid properties are returned.

```shell Incorrect property
ilorest select Bios.
ilorest -v list CapacityMiB Name Vend --json --select Memory.
```

```json Output (truncated)
Selected option(s): #Memory.v1_7_1.Memory
[
  {
    "CapacityMiB": 32768,
    "Name": "proc1dimm12"
  },
  {
    "CapacityMiB": 0,
    "Name": "proc2dimm11"
  },
  {
    "CapacityMiB": 0,
    "Name": "proc2dimm7"
  },
....
{
    "CapacityMiB": 0,
    "Name": "proc2dimm9"
  }
]
iLORest return code: 0
```

The following example retrieves the value of the `CapacityMiB`
property in the `Memory.` subsystem. Several memory slots are populated with identical DIMMs (32768 MiB),
but not all of them. In this case, iLOrest returns only two values: `0` and `32768`.

```shell
ilorest list CapacityMiB --json --select Memory.
[
  {
    "CapacityMiB": 0
  },
  {
    "CapacityMiB": 32768
  }
]
```

The following example retrieves the values of the `CapacityMiB` and `Name`
properties in the `Memory.` subsystem. The `Name` value is different
for each and every DIMM slot, populated or not. Hence the output displays
both values for each memory slot. Output is truncated.

```shell
ilorest list CapacityMiB Name --json --select Memory.
[
  {
    "CapacityMiB": 0,
    "Name": "proc2dimm2"
  },
  {
    "CapacityMiB": 0,
    "Name": "proc1dimm12"
  },
  {
    "CapacityMiB": 32768,
    "Name": "proc2dimm8"
  },
...
  {
    "CapacityMiB": 32768,
    "Name": "proc1dimm4"
  },
  {
    "CapacityMiB": 0,
    "Name": "proc1dimm6"
  }
]

```

### Info Command

#### Syntax

`info [Property(s)] [Optional Parameters]`

#### Description

Displays detailed information about a property within a selected type.
Information includes the data type of the value, if the property
is read-only or not, a brief description, possible values, and any
sub-properties associated with the property.

#### Parameters

-**--selector=SELECTOR** or **--select SELECTOR**

The `--selector` or `--select` parameter allows you to select
a [data type](/docs/concepts/datatypesandcollections/) prior to
run the command. This is a quick way to select a type and
work on a different type
than the one already selected.

- **-h, --help**

Including the `--help` parameter displays help for the command.

- **-j, --json**

Optionally include this flag if you wish to change the displayed output to
JSON format. Preserving the JSON data structure makes the information
easier to read.

#### Login Parameters

The following parameters can be included to login to a server in the same
line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user
and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL
flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags
to login. Use the provided iLO password corresponding to the username you gave
to login.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs
in the data retrieval process.

:::info NOTE
Use this option to limit long login times.
:::

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a
starting point, the default path will be `/redfish/v1/`.
Refer to the [Path Option](/docs/redfishclients/ilorest-userguide/advancedusage/#path-option) for more information.

:::info NOTE
The `path` flag can only be specified at the time of login, so if you are already
logged into the server, the `path` flag will not change the path. If you are
entering a command that is not the `login`
command, but includes your login information,
you can still specify the path flag there.
:::

- **--logout**

Optionally include the logout flag to log out of the server after this
command is completed. You need to be logged in to use this flag.

#### Examples

Without any supplied property, `info` lists all
available options in the selected [type](/docs/concepts/datatypesandcollections/).
In the next example, the full list is truncated.

```shell
iLOrest > select Bios.
iLOrest > info
Info options:
AcpiHpet
AcpiRootBridgePxm
AcpiSlit
AdjSecPrefetch
AdminEmail
AdminName
AdminOtherInfo
AdminPhone
...
```

This following example simultaneously logs into a remote Redfish service at the provided
URL (`--url`) with the provided username (`-u`) and password (`-p`),
selects the `Power.` type, and displays the `PowerSupplies` property information.

```shell
iLOrest > info PowerSupplies -u username -p password --url xx.xx.xx.xx --select Power.
Discovering data...Done

NAME
    PowerSupplies


DESCRIPTION
    Details of the power supplies associated with this system or
    device


TYPE
    array


READ-ONLY
    True


SUB-PROPERTIES
    Redundancy, Name, SerialNumber, MemberId, @odata.id,
    PowerCapacityWatts, Model, PartNumber, Status,
    LastPowerOutputWatts, SparePartNumber, RelatedItem,
    LineInputVoltageType, Oem, PowerSupplyType, LineInputVoltage,
    FirmwareVersion, Manufacturer
```

Multiple properties belonging to the `VirtualMedia` type are specified in the next example.

```shell
iLOrest > select VirtualMedia.
iLOrest > info Image WriteProtected

NAME
    Image


DESCRIPTION
    The valid URI indicating the image that is mounted on this server.
    A null value indicates that no image exists.


TYPE
    string
    null


READ-ONLY
    False


**************************************************

NAME
    WriteProtected


DESCRIPTION
    Indicates whether the virtual media is protected against write
    operations.


TYPE
    boolean
    null


READ-ONLY
    False


POSSIBLE VALUES
    True or False
```

Any Sub-Properties shown in an info response can be queried in the same form
as `set`, `list`, and `get`: `Property/Sub-property`.

```shell
iLOrest > select ComputerSystem.
iLOrest > info Boot

NAME
    Boot


DESCRIPTION
    The boot information for the current resource.


TYPE
    object


READ-ONLY
    False


SUB-PROPERTIES
    BootSourceOverrideTarget,
    BootSourceOverrideTarget@Redfish.AllowableValues,
    BootSourceOverrideEnabled, BootSourceOverrideMode,
    UefiTargetBootSourceOverride@Redfish.AllowableValues,
    UefiTargetBootSourceOverride


iLOrest > info Boot/BootSourceOverrideTarget

NAME
    BootSourceOverrideTarget


DESCRIPTION
    The current boot source to be used at next boot instead of the
    normal boot device, if BootSourceOverrideEnabled is true.


TYPE
    string
    null


READ-ONLY
    False
```

### Get Command

#### Syntax

`get [Property(s)] [Optional Parameters]`

#### Description

Use this command only after a [type](/docs/concepts/datatypesandcollections/) has already been selected
or supplied with the `--select` parameter.

Run without any argument, `get`displays the value(s) of all the propertie(s) of a selected
[data type](/docs/concepts/datatypesandcollections/) excluding
[reserved properties](#reserved-properties). The output can be in human-readable or JSON format.

:::info NOTE

- Supplying a list of nonexistent properties in the selected
type returns [iLOrest error](/docs/redfishclients/ilorest-userguide/errors/) 6:
`No get contents found for selected type.`

- Supplying a list of properties with at least one existent among them
  does not return any error. Nonexistent properties are silently
  discarded and only valid properties are processed.

- Identical property values of similar objects are only printed once.

Refer to the [example](#examples-6) section below for illustration.
:::

#### Parameters

- **Property(s)**

Supplying a property or multiple properties causes `get` to display
the current value for that particular property or properties.

If you want to retrieve all the values of all the properties, run without arguments.
This is still assuming you have a type already selected.

- **-h, --help**

Including the `help` flag displays help for the command.

- **--selector=SELECTOR** or **--select SELECTOR**

The `--selector` or `--select` parameter allows you to select
a [data type](/docs/concepts/datatypesandcollections/) prior to
run the command. This is a quick way to select a type and
work on a different type than the one already selected.

- **--filter [FILTER\_ATTRIBUTE=FILTER\_VALUE]**

Optionally provide a filter `key=value` to select only properties matching this filter. Refer to the
[Filter Option](/docs/redfishclients/ilorest-userguide/advancedusage/#filter-option)
for more information and examples.

- **-j, --json**

Include this flag to change the displayed output to JSON format.
Preserving the JSON data structure makes the information easier to read.

- **--noreadonly**

Include this flag to display properties that are not read-only.
This is useful to see what is configurable with the selected type(s).

#### Login Parameters

The following parameters can be included to login to a server in the same line
as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and
password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL
flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL
flags to login. Use the provided iLO password corresponding to the username
you gave to login.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include
logs in the data retrieval process.

:::info NOTE
Use this option to limit long login times.
:::

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a
starting point, the default path will be `/redfish/v1/`.
Refer to the
[Path Option](/docs/redfishclients/ilorest-userguide/advancedusage/#path-option) for more information.

:::info NOTE
The `path` flag can only be specified at the time of login, so if you are
already logged into the server, the `path` flag will not change the path.
If you are entering a command that is not the `login` command, but includes
your login information, you can still specify the path flag there.
:::

- **--logout**

Optionally include the logout flag to log out of the server after this
command is completed. You need to be logged in to use this flag.

#### Examples

Using `get` without any property returns the values of all
the properties in the selected
type. In the following example, the output is truncated.

:::success Best Practice
Although iLOrest arguments are not case-sensitive, it is a
best practice to respect the case sensitivity of arguments. You may
have to use Redfish clients that request the respect of the case.
:::

```shell
iLOrest > select Bios.
iLOrest > get
AcpiHpet=Enabled
AcpiRootBridgePxm=Enabled
AcpiSlit=Enabled
AdjSecPrefetch=Enabled
AdminEmail=""
AdminName=Michael L
AdminOtherInfo=""
AdminPhone=""
...
```

The following example prints the value of a property belonging
to the type selected in the previous example (`Bios.`)

```shell
iLOrest > get AdminName
AdminName=Jason E
```

This command simultaneously logs in to a remote iLO at the provided URL (`--url`)
with the provided username (-u) and password (-p), selects the `Bios.`
type, and the `get` command is used to retrieve the `BootOrderPolicy`
property of `Bios.`

```shell
iLOrest > get BootOrderPolicy --url xx.xx.xx.xx -u username -p password --select Bios.
Discovering data...Done
BootOrderPolicy=RetryIndefinitely
```

Because the `--logout` parameter is included in the next example,
the user is logged out of the remote
Redfish service after the `get` command is performed.

```shell
iLOrest > select ComputerSystem.
iLOrest > get AssetTag --logout
AssetTag=""
Logging session out.
```

The following example retrieve multiple property and sub-property values,
using the `/` separator.

```shell
iLOrest > select ComputerSystem.
iLOrest > get MemorySummary
MemorySummary=
               Status=
                       HealthRollup=OK
               TotalSystemPersistentMemoryGiB=0
               TotalSystemMemoryGiB=32

iLOrest > get MemorySummary/Status MemorySummary/TotalSystemMemoryGiB AssetTag
AssetTag=""
MemorySummary=
               Status=
                       HealthRollup=OK
               TotalSystemMemoryGiB=32
```

You can use the `noreadonly` flag to narrow down your results
to only retrieve properties that are writeable.

```shell All properties
iLOrest > select ComputerSystem.
iLOrest > get
AssetTag=""
BiosVersion=U32 v2.10 (12/14/2018)
Boot=
      BootSourceOverrideTarget=None
      BootSourceOverrideTarget@Redfish.AllowableValues=None
                                                        Cd
                                                        Hdd
                                                        Usb
                                                        SDCard
                                                        Utilities
                                                        Diags
                                                        BiosSetup
                                                        Pxe
                                                        UefiShell
                                                        UefiHttp
                                                        UefiTarget
      BootSourceOverrideEnabled=Disabled
...
```

```shell Writeable only properties
iLOrest > get --noreadonly --select ComputerSystem.
AssetTag=""
Boot=
      BootSourceOverrideTarget=None
      BootSourceOverrideEnabled=Disabled
      BootSourceOverrideMode=Legacy
      UefiTargetBootSourceOverride=None
HostName=ahostname
IndicatorLED=Unknown
Oem=
     Hpe=
          EndOfPostDelaySeconds=None
          PowerOnDelay=Minimum
          ServerFQDN=""
          PowerAutoOn=RemainOff
          PostMode=None
          ProcessorJitterControl=
                                  Mode=Auto
          PostDiscoveryMode=None
          PowerRegulatorMode=OSControl
```

The following example selects the `Bios` data type before
asking, in verbose mode, for the values of properties belonging to another
data type (`Memory.`). As a consequence, iLOrest returns an error.

```shell
ilorest select Bios.
ilorest -v get CapacityMiB Name Vend --json

Selected option(s): #Bios.v1_0_0.Bios

Error: No get contents found for selected type.
iLORest return code: 6
```

The following example selects the `Bios.` type
and then switches to the `Memory.` type to retrieve
the values of three properties. However, one of
them (`Vend`) is not spelled correctly.

```shell Incorrect property
ilorest select Bios.
ilorest -v get CapacityMiB Name Vend --json --select Memory.
```

```json Output (truncated)
Selected option(s): #Memory.v1_7_1.Memory
[
  {
    "CapacityMiB": 32768,
    "Name": "proc1dimm12"
  },
  {
    "CapacityMiB": 0,
    "Name": "proc2dimm11"
  },
  {
    "CapacityMiB": 0,
    "Name": "proc2dimm7"
  },
....
{
    "CapacityMiB": 0,
    "Name": "proc2dimm9"
  }
]
iLORest return code: 0
```

The following example retrieves the value of the `CapacityMiB`
property in the `Memory.` subsystem. Several memory slots are populated with identical DIMMs (32768 MiB),
but not all of them. In this case, iLOrest returns only two values: `0` and `32768`.

```shell
ilorest get CapacityMiB --json --select Memory.
[
  {
    "CapacityMiB": 0
  },
  {
    "CapacityMiB": 32768
  }
]
```

The following example retrieves the value of the `CapacityMiB` and `Name`
properties in the `Memory.` subsystem. The `Name` value is different
for each and every DIMM slot, populated or not. Hence the output displays
both values for each memory slot.

```shell Truncated output
ilorest get CapacityMiB Name --json --select Memory.
[
  {
    "CapacityMiB": 0,
    "Name": "proc2dimm2"
  },
  {
    "CapacityMiB": 0,
    "Name": "proc1dimm12"
  },
  {
    "CapacityMiB": 32768,
    "Name": "proc2dimm8"
  },
...
  {
    "CapacityMiB": 32768,
    "Name": "proc1dimm4"
  },
  {
    "CapacityMiB": 0,
    "Name": "proc1dimm6"
  }
]
```

### Set Command

#### Syntax

`set [Property=Value] [Path] [Optional Parameters]`

:::info NOTE
The syntax formats used to set properties can be tricky if not done correctly.
See the following examples to illustrate how the syntax works.
:::

- `set AdminName=John`

**Correct** syntax. This sets the `AdminName` to John.

- `set "AdminName=John Doe"`

**Correct** syntax. If the property has a space in it, use quotes
around the entire property/value pair. Here the `AdminName` has been set
to John Doe.

- `set AdminName=""`

**Correct** syntax. Use this syntax, only quotes with no value,
to remove the `AdminName` property value.

- `set AdminName=''`

**Correct** syntax. This is an alternate syntax that also removes the
`AdminName` property and sets it to nothing. Use single quotes with
nothing between them.

- `set AdminName='"'`

**Correct** syntax. This deletes the `AdminName` value.

- `set AdminName="John Doe"`

This is **incorrect** syntax, and will not be correctly reflected on the server.

#### Description

Changes the value of a property in a currently selected type.
Multiple properties can be set simultaneously.

:::info NOTE
<b>Read-only</b> and <b>System-unique</b> properties like Serial Numbers
and ProductId are skipped, and remaining continue to be set.
:::
:::info NOTE
If <b>System-unique</b> properties need to be set, use `--uniqueoverride`
option.
:::
:::warning Warning
The changes set will be reflected on the server only after committing them.
:::

#### Parameters

- **Property(s)**

Supplying a property and a value stagee an update to that property with the
supplied value.

- **-h, --help**

Including the help flag will display help for the command.

- **--selector=SELECTOR**

Optionally including the **selector** flag allows you to select a type to
run while running the current command. Use this flag when you wish to select
a type without entering another command, or if you wish to work with a type
that is different from the one you currently have selected.

- **--filter [FILTER\_ATTRIBUTE=FILTER\_VALUE]**

Optionally set a filter value for a filter attribute. This uses the provided
filter for the currently selected type. Refer to the
[Filter Option](/docs/redfishclients/ilorest-userguide/advancedusage/#filter-option) for more information.

:::info NOTE
 Use this flag to narrow down your results. For example, selecting a common
 type might return multiple objects that are all of that type.
 If you want to modify the properties of only one of those objects,
 use the filter flag to narrow down results based on properties.
:::

- **--commit**

Use this flag when you are ready to commit all pending changes. Some changes
made in this way will be updated instantly, while others will be reflected the
next time the server is started.

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this flag if second-level
BIOS authentication is needed for the command to execute.

:::info NOTE
This option is only used on Gen 9 systems.
:::

- **--reboot=REBOOT**

Use this flag to perform a reboot command function after completion of
operations. For help with parameters and descriptions regarding the reboot
flag, run `help reboot`.

- **--uniqueoverride**

Override the measures stopping the tool from writing over items that are System-unique.

#### Login Parameters

The following parameters can be included to login to a server in the same line
as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and
password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL
flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags
to login. Use the provided iLO password corresponding to the username you gave to login.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs
in the data retrieval process.

:::info NOTE
Use this option to limit long login times.
:::

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a
starting point, the default path will be `/redfish/v1/`.
Refer to the
[Path Option](/docs/redfishclients/ilorest-userguide/advancedusage/#path-option)
for more information.

:::info NOTE
The `path` flag can only be specified at the time of login, so if you are
already logged into the server, the `path` flag will not change the path.
If you are entering a command that is not the `login` command, but
includes your login information, you can still specify the path flag there.
:::

- **--logout**

Optionally include the logout flag to log out of the server after this command
is completed. You need to be logged in to use this flag.

#### Examples

:::info NOTE
Arguments are not case-sensitive.
:::

You can set multiple properties from the same type simultaneously. Add quotes
around the property and value to add spaces in the value.

:::info NOTE
Even though the `get` command shows **ServiceName** is set to **ExampleService**
and **AdminName** set to **Jason E**, the `commit` command must
be performed next for the changes to be updated on the server.
:::

```shell
iLOrest > select Bios.
iLOrest > get AdminName ServiceName
AdminName=""
ServiceName=""
iLOrest > set "AdminName=Jason E" ServiceName=ExampleService
iLOrest > get AdminName ServiceName
AdminName=Jason E
ServiceName=ExampleService
```

This command simultaneously logs in to the server at the provided URL
(`--url`) with the provided username (`-u`) and password (`-p`),
and then selects the `Bios.` type. The `set` command is used to set
the `AdminName` property to `Jason E`, and the commit flag has
been added to apply the changes to the server.

```shell
iLOrest > set "AdminName=Jason E" --url xx.xx.xx.xx -u username -p password --select Bios. --commit
Discovering data...Done
Committing changes...
One or more properties were changed and will not take effect until system is reset.
```

To revert your changes on a type you can use the refresh flag.

```shell
iLOrest > select Bios.
iLOrest > get AdminName
AdminName=Jason E
iLOrest > set AdminName=JohnDoe
iLOrest > get AdminName
AdminName=JohnDoe
iLOrest > select Bios. --refresh
iLOrest > get AdminName
AdminName=Jason E
```

### Save Command

#### Syntax

`save [Optional Parameters]`

#### Description

Saves the JSON information of a selected type to a local file. Use this
command along with the `load` command when you want to modify properties of a
selected type through file editing. Using this command saves a local copy
of your selected type’s JSON information.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **-f FILENAME, --filename=FILENAME**

Use this flag if you wish to use a different filename than the default one.
The default filename is `ilorest.json`.

- **--selector=SELECTOR**

Optionally including the **selector** flag allows you to select a type to run
while running the current command. Use this flag when you wish to select a type
without entering another command, or if you wish to work with a type that
is different from the one you currently have selected.

- **--multisave=MULTISAVE**

Optionally include this flag to save multiple types of single file. Override
the currently selected type.

- **--filter [FILTER\_ATTRIBUTE=FILTER\_VALUE]**

Optionally set a filter value for a filter attribute. This uses the provided
filter for the currently selected type. Refer to the
[Filter Option](/docs/redfishclients/ilorest-userguide/advancedusage/#filter-option)
for more information.

:::info NOTE
Use this flag to narrow down your results. For example, selecting a common
type might return multiple objects that are all of that type.
If you want to modify the properties of only one of those objects,
use the filter flag to narrow down results based on properties.

Refer to the [example](/docs/redfishclients/ilorest-userguide/globalcommands/#examples-8)
section below for an example.
:::

- **-j, --json**

Optionally include this flag if you wish to change the displayed output to JSON
format. Preserving the JSON data structure makes the information easier to read.

- **--encryption=ENCRYPTION**

Optionally include this flag to encrypt a file using the key provided.

#### Login Parameters

The following parameters can be included to login to a server in the same line
as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and
password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL
flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags
to login. Use the provided iLO password corresponding to the username you gave
to login.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs
in the data retrieval process.

:::info NOTE
Use this option to limit long login times.
:::

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a
starting point, the default path will be `/redfish/v1/`.
Refer to the [Path Option](/docs/redfishclients/ilorest-userguide/advancedusage/#path-option)
for more information.

:::info NOTE
The `path` flag can only be specified at the time of login, so if you are
already logged into the server, the `path` flag will not change the path.
If you are entering a command that is not the `login`
command, but includes your login information, you can still specify the path
flag there.
:::

- **--logout**

Optionally include the logout flag to log out of the server after this
command is completed. You need to be logged in to use this flag.

#### Examples

In the following example, iLOrest logs into a remote iLO,
selects the `Bios.` subsystem and saves its configuration
into the default `ilorest.json` file.

:::warning Warning
A `--select Bios.` selection points to its
[pending/settings area](/docs/concepts/biosdatamodel/#bios-current-and-pending-areas)

The pending area may differ from the running/current area if you have not
cold rebooted the server after a committed modification.

The above statement is true for all the commands accepting
the `--select` [parameter](/docs/redfishclients/ilorest-userguide/globalcommands/#select-command), including the `get` and `list` global commands.

The following selectors (data types) behave like `Bios.`:

- `HpeServerBootSettings.`
- `HpeiSCSISoftwareInitiator.`
- `HpeKmsConfig.`
- `HpeServerConfigLock.`
- `HpeTlsConfig.`
- `SmartStorageConfig.` (iLO 5 only)
- `NetworkAdapter.v1`F

You can use the `pending` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#pending-command)
to list pending modifications in the mentioned data types.

Use a `rawget` [command](/docs/redfishclients/ilorest-userguide/rawcommands/#examples-1) to retrieve the current properties of the above data types.

The URIs of the above data types can be quickly determined with the first example in this
[section](/docs/redfishclients/ilorest-userguide/bioscommands/#bios-commands).
:::

```shell Saving Bios configuration
iLOrest > save --select Bios. --url xx.xx.xx.xx -u username -p password
Discovering data...Done
Saving configuration...
Configuration saved to: ilorest.json
```

```json Output
[
  {
    "Comments": {
      "Manufacturer": "HPE",
      "Model": "ProLiant DL360 Gen10",
      "BIOSFamily": "U32",
      "BIOSDate": "12/14/2018",
      "SerialNumber": "Kappa",
      "iLOVersion": "iLO 5 v1.40"
    }
  },
  {
    "#Bios.v1_0_0.Bios": {
      "/redfish/v1/systems/1/bios/settings/": {
        "@odata.context": "/redfish/v1/$metadata#Bios.Bios",
        "@odata.etag": "W/\"02E13BA89B606F6F6F02950EB3CA676D\"",
        "@odata.id": "/redfish/v1/systems/1/bios/settings/",
        "AttributeRegistry": "BiosAttributeRegistryU32.v1_2_10",
        "Attributes": {
          "MemFastTraining": "Enabled",
          "PowerRegulator": "DynamicPowerSavings",
          "EmbeddedDiagnostics": "Enabled",
          "Ipv6Address": "::",
          "PersistentMemBackupPowerPolicy": "UseExternalBackupPower",
          "ServiceEmail": "",
          "FlexLom1Aspm": "Disabled",
          "UrlBootFile": "",
          "DcuStreamPrefetcher": "Enabled",
          "IntelNicDmaChannels": "Enabled",
          "...": "..."
        },
        "Id": "settings",
        "Name": "BIOS Pending Settings"
      }
    }
  }
]
```

Use the `--multisave` option to specify multiple types to save in a single
file. This file can be sent to load in order to load multiple types with
a single command. All type strings are delimited by a ','.

```shell
iLOrest > save --multisave Bios.,ComputerSystem.
Discovering data...Done
Saving configuration...
Configuration saved to: ilorest.json
```

The following example simultaneously logs in to the server at the provided URL
(`--url`) with the provided username (`-u`) and password (`-p`),
selects the `Bios.` type, saves the JSON response to a file called
`BiosInfo.json` in the current local directory, and then logs out.

```shell
iLOrest > save --select Bios. --url xx.xx.xx.xx -u username -p password -f BiosInfo.json --logout
Discovering data...Done
Saving configuration...
Configuration saved to: BiosInfo.json
Logging session out.
```

The following example saves the configuration of the iLO shared network port.
Use `Name="Manager Dedicated*` to retrieve the iLO dedicated network port configuration.

:::info NOTE

The following example excludes IPv4 and IPv6 information for security reasons.

Refer to these [best practices](/docs/redfishclients/ilorest-userguide/examplecommandsscripts/#network-configuration-best-practices)
mentioned before modifying the iLO network configuration.

You can use the `ethernet save`
[command](/docs/redfishclients/ilorest-userguide/ilocommands/#ethernet-command)
to retrieve the configuration of ethernet interfaces (manager and system), including their IP configuration.

Use the `ethernet --network-ipv4` to modify the iLO IP network
configuration.

:::

:::info TIP


:::

```shell
ilorest save --selector EthernetInterface. --filter Name="Manager Shared*" -f SaveSharedPort.json --json
```

### Load Command

#### Syntax

`load [Optional Parameters]`

#### Description

Loads the server configuration from a file. Run this command without
parameters to use the configuration found in the file called `ilorest.json`.
Otherwise, you can point this command to use any file you specify.
Use this function to change the properties of a type to new values.
This command uploads the new values of the type’s properties to the server.

:::info NOTES

- By default and in order to avoid unwanted communication interruptions
  to the ilO Dedicated Network Port, the `load` command skips modifications
  in the `EthernetInterfaces/1` resource. Use the `--force_network_config`
  parameter to modify this resource.
- **Read-only** and **System-unique** properties like Serial Numbers
  and ProductId are skipped, and remaining continue to be set.
- If **System-unique** properties need to be set, use `--uniqueoverride` option.

Refer to these
[examples](/docs/redfishclients/ilorest-userguide/examplecommandsscripts/#set-ilo-networking-properties)
to change the IP iLO network configuration.

:::

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **-f FILENAME, --filename=FILENAME**

Use this flag if you wish to use a different filename than the default one.
The default filename is `ilorest.json`.

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this flag if second-level
BIOS authentication is needed for the command to execute.

:::info NOTE
This option is only used on Gen 9 systems.
:::

- **--uniqueoverride**

Override the measures stopping the tool from writing over items that are System-unique.

- **--force\_network\_config**

Force loading iLO network configuration. By default, `load` discards these properties.

- **-m MPFILENAME, --multiprocessing=MPFILENAME**

Optionally supply a filename to a multi-processing file to load concurrently
on multiple servers.

- **-o OUTDIRECTORY, --outputdirectory=OUTDIRECTORY**

Use the provided directory to output data for a multiple server configuration.

- **--encryption=ENCRYPTION**

Optionally include this flag to decrypt a file using the key provided.

#### Login Parameters

The following parameters can be included to login to a server in the same line
as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and
password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL
flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags
to login. Use the provided iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this command
is completed. You need to be logged in to use this flag.

#### Examples

:::info NOTE
Refer to this
[section](http://localhost:3000/docs/redfishclients/ilorest-userguide/examplecommandsscripts/#configure-ilo-ip-addresses)
for an example using the `--force_network_config` parameter.
:::

If no filename is supplied with the (`-f`, `--filename`) option, the `load` command looks for a
file named `ilorest.json` in the current working directory.
Save will automatically select the required type to make changes.

```shell
iLOrest > load
Loading configuration...
Committing changes...
One or more properties were changed and will not take effect until system is reset.
```

This command simultaneously logs in to the server at the provided URL
(`--url`) with the provided username (`-u`) and password (`-p`)
and load a file from the current working directory called `biosconfig.json`.

```shell
iLOrest > load --url xx.xx.xx.xx -u username -p password -f biosconfig.json
Discovering data...Done
Loading configuration...
Committing changes...
One or more properties were changed and will not take effect until system is reset.
```

This is the multi-server configuration setup. You must pass in a multi-server
file in the following format.

```shell
iLOrest > load -m mpfilename.txt -f biosconfig.json
Discovering data...Done
Loading configuration for multiple servers...
Logging session out.
Checking given server information...
Create multiple processes to load configuration concurrently to all servers...
Loading Configuration for xx.xx.xx.xx : SUCCESS
Loading Configuration for xx.xx.xx.xy : SUCCESS
All servers have been successfully configured.
```

All servers are configured concurrently. Because the filename tag is included,
it searches for the file called `biosconfig.json` and loads that information
to the servers. If no values have changed, the load process is complete.
If any property values have changed, the changes are committed and the
user is logged out of the server. Logs of the entire process are then
stored in the same location as the iLOrest logs.

```shell
--url 10.0.0.100 -u username -p password
--url 10.0.0.101 -u username -p password
--url 10.0.0.102 -u username -p password
--url 10.0.0.103 -u username -p password
```

### Status Command

#### Syntax

`status [Optional Parameters]`

#### Description

Displays all pending changes, regardless of which type is
currently selected. All the changes that have not been committed yet
will be shown.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

#### Examples

The status command shows changes to be committed. The status command shows
all pending changes, including changes for different types.

```shell
iLOrest > status
Current changes found:
Bios.v1_0_0(/redfish/v1/systems/1/bios/settings/) (Currently selected)
        Attributes/ServiceName=simpleservice
ComputerSystem.v1_4_0(/redfish/v1/Systems/1/)
        AssetTag=newtag
```

Once changes are committed they no longer show in status.

```shell
iLOrest > status
Current changes found:
Bios.v1_0_0(/redfish/v1/systems/1/bios/settings/) (Currently selected)
        Attributes/ServiceName=simpleservice
ComputerSystem.v1_4_0(/redfish/v1/Systems/1/)
        AssetTag=newtag
iLOrest > commit
Committing changes...
One or more properties were changed and will not take effect until system is reset.
The operation completed successfully.
iLOrest > status
No changes found
```

### Commit Command

#### Syntax

`commit [Optional Parameters]`

#### Description

Applies all changes made during the current session. After you have changed
one or more values for the property of a type, you need to commit those
changes in order for those changes to be reflected on the server.

#### Usage in Other Commands

To commit at the end of a command, include the *--commit* option. Not all
commands have the `commit` flag, run help on the command to see available
options.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this flag if second-level
BIOS authentication is needed for the command to execute.

:::info NOTE
This option is only used on Gen 9 systems.
:::

- **--reboot=REBOOT**

Use this flag to perform a reboot command function after completion of
operations.
For help with parameters and descriptions regarding the reboot flag,
run `help reboot`.

#### Examples

Commit all pending changes made by set by running the `commit` command.

```shell
iLOrest > select ComputerSystem.
iLOrest > set AssetTag=newtag
iLOrest > select Bios.
iLOrest > set servicename=simpleservice
iLOrest > commit
Committing changes...
One or more properties were changed and will not take effect until system is reset.
The operation completed successfully.
```

If you do not commit before logging out changes will be lost.

:::info NOTE

You must commit changes before logging out or settings will not be updated on
the server.

:::

```shell
iLOrest > select Bios.
iLOrest > get AdminName
AdminName=Chelsea K
iLOrest > set AdminName=newname
iLOrest > get AdminName
AdminName=newname
iLOrest > logout
Logging session out.
iLOrest > get AdminName --select Bios.
Discovering data...Done
AdminName=Chelsea K
```

Commit after running other commands by using the
`--commit` option. This command simultaneously logs in to the server at the
provided URL (`--url`) with the provided username (`-u`, `--user`) and password
(`-p`, `--password`), selects the `ComputerSystem.` type, sets
`AssetTag` to `""`, commits the change, and logs-out.

```shell
iLOrest > set AssetTag="" --url xx.xx.xx.xx -u username -p password --selector ComputerSystem. --commit --logout
Discovering data...Done
Committing changes...
The operation completed successfully.
Logging session out.
```

### Logout Command

#### Syntax

`logout [Optional Parameters]`

#### Description

Use the `logout` command to exit your session and to disconnect from the server.

#### Usage in Other Commands

To log out at the end of a command, include the *--logout* option.
Not all commands have the `logout` flag, run help on the command to see
available options.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

#### Examples

Use the logout command to end the session and disconnect from the server.

```shell
iLOrest > login xx.xx.xx.xx -u username -p password
Discovering data...Done
iLOrest > logout
Logging session out.
```

Logout from another command using the `--logout` option.

```shell
iLOrest > get AssetTag --select ComputerSystem. --logout
AssetTag=""
Logging session out.
```

### Exit Command

#### Syntax

`exit [Optional Parameters]`

#### Description

Use the `exit` command if you wish to exit from the interactive shell.
Using exit will also log you out and disconnect you from the server.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

#### Examples

This command exits the interactive shell.

```shell
iLOrest > exit
Logging session out.
Bye for now
```
