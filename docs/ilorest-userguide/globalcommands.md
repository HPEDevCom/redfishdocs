---
toc:
  enable: true
  maxDepth: 3
---

# Commands

## Global Optional Arguments

This section lists all global options available. These options apply to ilorest as a whole and are either passed when invoking for interactive mode or can be passed  at every instance for scriptable mode.

**-h, --help**

Including the help flag will display general help for the tool.

**-c, --config=CONFIGFILE**

Use the provided configuration file instead of the default.

**--cache-dir=CACHEPATH**

Use the provided directory as the location to cache data instead of the default.

**-v**

Display verbose information. The `--verbose` option provides a brief response message from iLO.

**-vv**

The second level or "very verbose" option provides further details regarding iLO response information.

<pre>
HTTP Response Code: [400]
MessageId: iLO.2.8.PropertyNotWritableOrUnknown
Description: The request included a value for a  read-only or unknown property.
Message: The property "NTPServers" is a read-only property and cannot be assigned a value, or not valid for this resource.
Resolution: If the operation did not complete, remove the property from the request body and resubmit the request.
</pre>

The extended verbosity option provides the following additional information for iLO HTTP and the iLO Channel Interface Driver response messages:
* An error response message id (“MessageId”), iLO response error message code identification.
* An error response message description (“Description”), essentially a quick synopsis of the issue.
* An error response message (“Message”) describing the reason for the error in greater detail. The offending properties are embedded as per the relevant error response resource.
* An error response resolution (“Resolution”) describing steps to correct the error.

> The following example shows extended verbosity:

**-d, --debug**

The debug option provides a timestamp of all transmit and response activity with iLO to a file called iLOrest.log. This files is saved in the same path where you launched the tool.

>The following example shows the contents of the iLOrest.log file:

<pre>
2020-06-05 14:20:39,266 INFO    : Not using CA certificate.
2020-06-05 14:20:39,267 INFO    : Initializing no proxy.
2020-06-05 14:20:39,267 DEBUG : HTTP REQUEST: GET
            PATH: /redfish/v1/
            HEADERS: {'OData-Version': '4.0', 'Accept-Encoding': 'gzip'}
            BODY: None
2020-06-05 14:20:39,269 DEBUG : Starting new HTTPS connection (1): 16.83.61.104
2020-06-05 14:20:39,884 DEBUG : https://16.83.61.104:443 "GET /redfish/v1/ HTTP/1.1" 200 None
2020-06-05 14:20:39,885 INFO    : Response Time to /redfish/v1/: 0.615999937057 seconds.
2020-06-05 14:20:39,887 DEBUG : HTTP RESPONSE for /redfish/v1/:
Code:200 OK
Headers:
            Transfer-Encoding: chunked
            ETag: W/"16CA421D"
            Link: &lt;/redfish/v1/SchemaStore/en/ServiceRoot.json/&gt;; rel=describedby
            Allow: GET, HEAD
            Cache-Control: no-cache
            Date: Fri, 05 Jun 2020 19:21:15 GMT
            OData-Version: 4.0
            X-Frame-Options: sameorigin
            Content-type: application/json; charset=utf-8

Body Response of /redfish/v1/: {"@odata.context":"/redfish/v1/$metadata#ServiceRoot.ServiceRoot","@odata.etag":"W/\"16CA421D\"","@odata.id":"/redfish/v1/","@odata.type":"#ServiceRoot.v1_5_1.ServiceRoot","Id":"RootService","AccountService":{"@odata.id":"/redfish/v1/AccountService/"},"Chassis":{"@odata.id":"/redfish/v1/Chassis/"},"EventService":{"@odata.id":"/redfish/v1/EventService/"},"JsonSchemas":{"@odata.id":"/redfish/v1/JsonSchemas/"},"Links":{"Sessions":{"@odata.id":"/redfish/v1/SessionService/Sessions/"}},"Managers":{"@odata.id":"/redfish/v1/Managers/"},"Name":"HPE RESTful Root Service","Oem":{"Hpe":{"@odata.context":"/redfish/v1/$metadata#HpeiLOServiceExt.HpeiLOServiceExt","@odata.type":"#HpeiLOServiceExt.v2_3_0.HpeiLOServiceExt","Links":{"ResourceDirectory":{"@odata.id":"/redfish/v1/ResourceDirectory/"}},"Manager":[{"DefaultLanguage":"en","FQDN":"ILOMXQ849018N.americas.hpqcorp.net","HostName":"ILOMXQ849018N","Languages":[{"Language":"en","TranslationName":"English","Version":"2.10"}],"ManagerFirmwareVersion":"2.10","ManagerType":"iLO 5","Status":{"Health":"OK"}}],"Moniker":{"ADVLIC":"iLO Advanced","BMC":"iLO","BSYS":"BladeSystem","CLASS":"Baseboard Management Controller","FEDGRP":"DEFAULT","IPROV":"Intelligent Provisioning","PRODABR":"iLO","PRODFAM":"Integrated Lights-Out","PRODGEN":"iLO 5","PRODNAM":"Integrated Lights-Out 5","PRODTAG":"HPE iLO 5","STDLIC":"iLO Standard","SUMABR":"SUM","SUMGR":"Smart Update Manager","SYSFAM":"ProLiant","VENDABR":"HPE","VENDNAM":"Hewlett Packard Enterprise","WWW":"www.hpe.com","WWWAHSV":"www.hpe.com/servers/ahsv","WWWBMC":"www.hpe.com/info/ilo","WWWDOC":"www.hpe.com/support/ilo-docs","WWWERS":"www.hpe.com/services/getconnected","WWWGLIS":"reserved for liconf URI","WWWIOL":"www.hpe.com/info/insightonline","WWWLIC":"www.hpe.com/info/ilo","WWWLML":"www.hpe.com/support","WWWPASS":"www.hpe.com/support/hpesc","WWWPRV":"www.hpe.com/info/privacy","WWWQSPEC":"www.hpe.com/info/qs","WWWRESTDOC":"www.hpe.com/support/restfulinterface/docs","WWWSUP":"www.hpe.com/support/ilo5","WWWSWLIC":"www.hpe.com/software/SWLicensing"},"Sessions":{"CertCommonName":"ILOMXQ849018N.americas.hpqcorp.net","CertificateLoginEnabled":false,"KerberosEnabled":false,"LDAPAuthLicenced":true,"LDAPEnabled":false,"LocalLoginEnabled":true,"LoginFailureDelay":0,"LoginHint":{"Hint":"POST to /Sessions to login using the following JSON object:","HintPOSTData":{"Password":"password","UserName":"username"}},"SecurityOverride":false,"ServerName":""},"System":[{"Status":{"Health":"OK"}}],"Time":"2020-06-05T19:21:15Z"}},"Product":"ProLiant DL360 Gen10","ProtocolFeaturesSupported":{"ExpandQuery":{"ExpandAll":false,"Levels":true,"Links":false,"MaxLevels":1,"NoLinks":true},"FilterQuery":true,"OnlyMemberQuery":true,"SelectQuery":false},"RedfishVersion":"1.6.0","Registries":{"@odata.id":"/redfish/v1/Registries/"},"SessionService":{"@odata.id":"/redfish/v1/SessionService/"},"Systems":{"@odata.id":"/redfish/v1/Systems/"},"Tasks":{"@odata.id":"/redfish/v1/TaskService/"},"TelemetryService":{"@odata.id":"/redfish/v1/TelemetryService/"},"UUID":"d3372204-1b09-54ea-9aa0-88940c369d59","UpdateService":{"@odata.id":"/redfish/v1/UpdateService/"},"Vendor":"HPE"}
</pre>

Display debug information.

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

Use this flag if you wish to enable Redfish only compliance. It is enabled by default in systems with iLO 5 and above.

<aside class="notice">The --redfish global option is not required for iLO 5.</aside>

**--latestschema**

Optionally use the latest schema files instead of the default present in iLO.

<aside class="notice">
Might cause errors in some data retrieval due to difference in schema versions.
</aside>

## Global Commands

This section includes commands as well as their usage and examples of general commands in the RESTful Interface Tool. They include commands used to do things such as listing help for using commands, viewing, retrieving, modifying, and committing changes to server properties, authenticating and logging in and out of the server.

### Help Command

> Help example commands:
> Entering help will list the global options and all available commands for iLOREST.

<pre>
iLOrest > <span style="color: #01a982; ">help</span>
usage: iLOrest [GLOBAL OPTIONS] [COMMAND] [COMMAND ARGUMENTS] [COMMAND OPTIONS]

iLOrest is a command-line or interactive interface that allows users to manage Hewlett Packard Enterprise products that take advantage of RESTful APIs.

In order to view or manage a system you must first login. You can login using the login command or during execution of any other command.
From here you can run any other commands. To learn more about specific commands, run iLOrest COMMAND -h.

optional arguments:
  -h, --help            show this help message and exit
  -c FILE, --config FILE
                        Use the provided configuration file instead of the default one.
  --cache-dir PATH      Use the provided directory as the location to cache data (default location: C:\Users\kallur\AppData\Roaming\.iLOrest)
  -v, --verbose         Display verbose information (with increasing level). '-v': Level 1, Logging, Stdout, Stderr. '-vv': Level 2, Extends Level 1 with slightly
                        elaborated iLO and HTTP response message. '-vvv': Level3, Extends Level 2 with message id, validation class, message text with embedded args,
                        and possible resolution/mitigation for iLO responses. High detailed HTTP responses. **NOTE 1**: Some responses may only contain limited
                        information from the source.**NOTE 4**: Default level is 0.
  -d, --debug           Display debug information.
  --logdir PATH         Use the provided directory as the location for log file.
  --nocache             During execution the application will temporarily store data only in memory.
  --nologo              Include to block copyright and logo.
  --toolbar             Show toolbar at the bottom.
  --redfish             Use this flag if you wish to to enable Redfish only compliance. It is enabled by default in systems with iLO5 and above.
  --latestschema        Optionally use the latest schema instead of the one requested by the file. Note: May cause errors in some data retrieval due to difference in
                        schema versions.
  --redirectconsole [REDIRECT CONSOLE]
                        Optionally include this flag to redirect stdout/stderr console.

BIOS COMMANDS
biosdefaults              - Set the currently logged in server to default BIOS settings.
bootorder                 - Displays and sets the current boot order.
iscsiconfig               - Displays and configures the current iscsi settings.
setpassword               - Sets the admin password and power-on password

COMMANDS
commit                    - Applies all the changes made during the current session.
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

PERSISTENT MEMORY COMMANDS
provisionpmm              - Applies specified configuration to PMM.
applypmmconfig            - Applies a pre-defined configuration to PMM.
clearpmmpendingconfig     - Clear pending config tasks
pmmsecuritystate          - Displaying the Security state of dimms.
showpmm                   - Display information about Persistent Memory modules.
showpmmpendingconfig      - Shows the pending configuration for PMM.
showrecommendedpmmconfig  - Show Recommended Configuration

RAW COMMANDS
rawdelete                 - Raw form of the DELETE command.
rawget                    - Raw form of the GET command.
rawhead                   - Raw form of the HEAD command.
rawpatch                  - Raw form of the PATCH command.
rawpost                   - Raw form of the POST command.
rawput                    - Raw form of the PUT command.

SMART ARRAY COMMANDS
clearcontrollerconfig     - Clears smart array controller configuration.
createlogicaldrive        - Creates a new logical drive on the selected controller.
deletelogicaldrive        - Deletes logical drives from the selected controller.
drivesanitize             - Erase/Sanitize physical drive(s)
factoryresetcontroller    - Factory resets a controller by index or location.
smartarray                - Discovers all storage controllers installed in the server and managed by the SmartStorage.

iLO COMMANDS
certificate               - Command for importing both iLO and login authorization certificates as well as generating iLO certificate signing requests (CSR)
clearrestapistate         - Clears the persistent state of the REST API. Some portions of the API may not be available until after the server reboots.
directory                 - Update directory settings, add/delete directory roles, and test directory settings on the currently logged in server.
disableilofunctionality   - disables iLO's accessibility via the network and resets iLO. WARNING: This should be used with caution as it will render iLO unable to respond to further network operations (including REST operations) until iLO is re-enabled using the RBSU menu.
eskm                      - Command for all ESKM available actions.
ethernet                  - Command for configuring Ethernet Management Controller Interfaces and associated properties
factorydefaults           - Resets iLO to factory defaults. WARNING: user data will be removed use with caution.
fwintegritycheck          - Perform a firmware integrity check on the currently logged in server.
firmwareupdate            - Perform a firmware update on the currently logged in server.
iloaccounts               - Views/Adds/deletes/modifies an iLO account on the currently logged in server.
backuprestore             - Backup and restore iLO to a server using a .bak file.
ilofederation             - Adds / deletes an iLO federation group on the currently logged in server.
ilolicense                - Adds an iLO license key to the currently logged in server.
iloreset                  - Reset iLO on the current logged in server.
ipprofiles                - This is used to manage hpeipprofile data store.
onebuttonerase            - Performs One Button Erase on a system.
reboot                    - Reboot operations for the current logged in server.
sendtest                  - Command for sending various tests to iLO.
serverclone               - Creates a JSON formatted clone file of a system's iLO, Bios, and SSA configuration which can be duplicated onto other systems. User editable JSON file can be manipulated to modify settings before being loaded onto another machine.
serverinfo                - Shows aggregate health status and details of the currently logged in server.
serverlogs                - Download and perform log operations.
serverstate               - Returns the current state of the server.
sigrecompute              - Command to recalculate the signature of the computer's configuration.
singlesignon              - Command for all single sign on available actions.
virtualmedia              - Command for inserting and removing virtual media.

iLO REPOSITORY COMMANDS
deletecomp                - Deletes components/binaries from the iLO Repository.
downloadcomp              - Downloads components/binaries from the iLO Repository.
flashfwpkg                - Flashes fwpkg components using the iLO repository.
installset                - Manages install sets for iLO.
listcomp                  - Lists components/binaries from the iLO Repository.
maintenancewindow         - Manages the maintenance windows for iLO.
makeinstallset            - Creates install sets for iLO.
taskqueue                 - Manages the update task queue for iLO.
uploadcomp                - Upload components/binary to the iLO Repository.
</pre>

> The syntax to get help details for specific command is '&lt;command&gt; **-h** or **--help**'

<pre>
iLOrest > <span style="color: #01a982; ">login -h</span>
usage: login [-h] [--url URL] [--sessionid SESSIONID] [-u USER] [-p PASSWORD] [--biospassword BIOSPASSWORD] [--https HTTPS_CERT]
             [--includelogs] [--path PATH] [--force-vnic] [--logout]
             [--selector SELECTOR]

To login remotely run using iLO url and iLO credentials
        example: login &lt;iLO url/hostname&gt; -u &lt;iLO username&gt; -p &lt;iLO password&gt;

        To login on a local server run without arguments
        example: login

        NOTE: A [URL] can be specified with an IPv4, IPv6, or hostname address.

optional arguments:
  -h, --help            show this help message and exit
  --selector SELECTOR   Optionally include this flag to select a type to run the current command on. Use this flag when you wish to select a type without entering another command, or if you wish to work with a type that is different from the one you currently have selected.

LOGIN OPTIONS:
  Options for logging in to a system.

  --url URL             Use the provided iLO URL to login.
  --sessionid SESSIONID
                        Use the provided sessionid to login.
  -u USER, --user USER  If you are not logged in yet, including this flag along with the
                        password and URL flags can be used to login to a server in the same command.
  -p PASSWORD, --password PASSWORD
                        Use the provided iLO password to log in.
  --biospassword BIOSPASSWORD
                        Select this flag to input a BIOS password. Include this
                        flag if second-level BIOS authentication is needed for the command to execute.
                        This option is only used on Gen 9 systems.
  --https HTTPS_CERT    Use the provided CA bundle or SSL certificate with your login to
                        connect securely to the system in remote mode. This flag has no effect in local mode.
  --includelogs         Optionally include logs in the data retrieval process.
  --path PATH           Optionally set a starting point for data collection during login.
                        If you do not specify a starting point, the default path will be /redfish/v1/.
                        Note: The path flag can only be specified at the time of login.
                        Warning: Only for advanced users, and generally not needed for normal operations.  
  --logout              Logout after the completion of the command.
</pre>

<p class="fake_header">Syntax</p>

help *[command] [optional parameters]*

<p class="fake_header">Description</p>

Displays command-line syntax and help menus for individual commands. Use this command if you want to know more about a command or need help using a command. Alternatively, you can use the `help` command without specifying a particular command if you wish to see all the available commands and options.

<p class="fake_header">Parameters</p>

- Command

Supplying a command to help will display the help message corresponding to the given command, as well as the options relating to that particular command.

<aside class="notice">If no command is provided, the help command lists and provides a brief description of all available commands.</aside>

- **-h, --help**

Running the `help` command with the **&#8209;h** or **&#8209;&#8209;help** parameter displays information on how to use the `help` command.

- **-c FILE, --config=FILE**

Use the provided configuration file instead of the default one.

- **--cache-dir=PATH**

Use the provided directory as the location to cache data (default location: `C:\Users\USERNAME\AppData\Roaming\.ilorest`).

<p class="fake_header">Inputs</p>

None

<p class="fake_header">Outputs</p>

None

### Login Command

> To login remotely, with basic authentication, supply the URL, username, and password for the server.

<pre>
iLOrest > <span style="color: #01a982; ">login xx.xx.xx.xx -u username -p password</span>
Discovering data...Done
</pre>

> To login remotely, with Certificate, supply the URL, user certificate, user key and user passphrase to the server.

<pre>
iLOrest > <span style="color: #01a982; ">login xx.xx.xx.xx --usercert cert.pem --userkey userkey.pem --userpassphrase password</span>
Discovering data...Done
</pre>

> Here the selector option has been included so that the `Bios` type is selected once the user is logged in. You can prove that the `Bios` type has indeed been selected when we enter the select command.

<pre>
iLOrest > login xx.xx.xx.xx -u username -p password <span style="color: #01a982; ">--select Bios.</span>
Discovering data...Done
iLOrest > select
Current selection: Bios.v1_0_0
</pre>

> An IPv4, IPv6, or hostname can be specified. IPv6 should use the following format.

<pre>
iLOrest > <span style="color: #01a982; ">login [xxxx::xxxx:xxxx:xxxx:xxxx] -u username -p password</span>
Discovering data...Done
</pre>

> Here a SSL certificate was included so iLOrest validates the HTTPS connection

<pre>
iLOrest > login system.domain.net -u username -p password <span style="color: #01a982; ">--https \path\to\SSLcert.crt</span>
Discovering data...Done
</pre>

> Here the URL, username, and password information are not specified here or in the configuration file, and the server was logged in to locally.

<pre>
iLOrest > <span style="color: #01a982; ">login</span>
Discovering data...Done
</pre>

> For Virtual NIC local login, use --force_vnic and username and password options.

<pre>
iLOrest > <span style="color: #01a982; ">login --force_vnic -u username -p password</span>
Discovering data...Done
</pre>


<p class="fake_header">Syntax</p>

login *[URL] [Optional Parameters]*

<p class="fake_header">Description</p>

Connects to a server, establishes a secure session, and discovers data from iLO. If you are logging in to a local server, run the command without arguments. If you are not logging in to a local server, supply the URL argument along with the user and password options.

<aside class="notice"> Authentication is not performed in production (default) mode. If a username and password are included then the configuration will default to an internal, unauthenticated administrative level
privileged user account. Higher security modes, if configured, require a valid iLO management username and password to connect.
</aside>

<p class="fake_header">Usage in Other Commands</p>

Login remotely with basic authentication as part of other commands by including the *--url*, *(-u, --user)*, and *(-p, --password)* flags.
Optionally include the *--https* flag to validate the SSL certificate when logging in.
Locally you will be logged in automatically unless running in higher security modes (see [Higher Security Modes](#higher-security-modes)).

<p class="fake_header">Parameters</p>

- **URL**

Connect to the server located at the provided URL.

- **-h, --help**

Including the help flag will display help for the command.

- **-u User**

Connect to the server as the provided user.

- **-p Password**

Connect to the server with the password corresponding to the given user.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs in the data retrieval process.

<aside class="notice">Use this option to limit long login times.</aside>

- **--selector=SELECTOR**

Optionally including the **selector** flag allows you to select a type to run while running the current command. Use this flag when you wish to select a type without entering another command, or if you wish to work with a type that is different from the one you currently have selected.

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a starting point, the default path will be /rest/v1.

<aside class="notice">The <b>path</b> flag can only be specified at the time of login, so if you are already logged into the server, the <b>path</b> flag will not change the path. If you are entering a command that isn&apos;t the <b>login</b> command, but includes your login information, you can still specify the path flag there.</aside>

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this flag if second-level BIOS authentication is needed for the command to execute.

<aside class="notice">This option is only used on Gen 9 systems.</aside>

### Types Command

> Types example commands:

> This command will list all the available types that you can select. The full list has been truncated for space.

<pre>
iLOrest > login xx.xx.xx.xx -u username -p password
Discovering data...Done
iLOrest > <span style="color: #01a982; ">types</span>
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
EventDestinationCollection
EventService.v1_0_8
HostInterface.v1_1_1
HostInterfaceCollection
HpeBaseConfigs.v2_0_0
HpeBaseNetworkAdapter.v2_0_0
HpeBaseNetworkAdapterCollection
HpeBiosMapping.v2_0_0
HpeCertAuth.v1_1_0
HpeCertificate.v1_0_0
HpeCertificateCollection
HpeComponent.v1_0_1
HpeComponentCollection
HpeComponentInstallSet.v1_0_3
HpeComponentInstallSetCollection
HpeComponentUpdateTaskQueueCollection
HpeDirectoryTest.v1_0_0
HpeESKM.v2_0_0
...
</pre>

> This command simultaneously logs in to the server at the provided URL with the provided username and password, and list all the available types that you can select. The full list has been truncated here for space.

<pre>
iLOrest > <span style="color: #01a982; ">types --url xx.xx.xx.xx -u username -p password</span>
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
EventDestinationCollection
EventService.v1_0_8
HostInterface.v1_1_1
HostInterfaceCollection
HpeBaseConfigs.v2_0_0
HpeBaseNetworkAdapter.v2_0_0
HpeBaseNetworkAdapterCollection
HpeBiosMapping.v2_0_0
HpeCertAuth.v1_1_0
HpeCertificate.v1_0_0
HpeCertificateCollection
HpeComponent.v1_0_1
HpeComponentCollection
HpeComponentInstallSet.v1_0_3
HpeComponentInstallSetCollection
HpeComponentUpdateTaskQueueCollection
HpeDirectoryTest.v1_0_0
HpeESKM.v2_0_0
...
</pre>

> Adding the `fulltypes` option will return the full type name instead of the default simplified versions. This is only available on Redfish systems.

<pre>
iLOrest > <span style="color: #01a982; ">types --fulltypes</span>
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
#EventService.v1_0_8.EventService
#HostInterface.v1_1_1.HostInterface
#HostInterfaceCollection.HostInterfaceCollection
#HpeBaseConfigs.v2_0_0.HpeBaseConfigs
#HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter
#HpeBaseNetworkAdapterCollection.HpeBaseNetworkAdapterCollection
#HpeBiosMapping.v2_0_0.HpeBiosMapping
#HpeCertAuth.v1_1_0.HpeCertAuth
#HpeCertificate.v1_0_0.HpeCertificate
#HpeCertificateCollection.HpeCertificateCollection
#HpeComponent.v1_0_1.HpeComponent
#HpeComponentCollection.HpeComponentCollection
#HpeComponentInstallSet.v1_0_3.HpeComponentInstallSet
#HpeComponentInstallSetCollection.HpeComponentInstallSetCollection
#HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection
#HpeDirectoryTest.v1_0_0.HpeDirectoryTest
#HpeESKM.v2_0_0.HpeESKM
...
</pre>

<p class="fake_header">Syntax</p>

types *[Optional Parameters]*

<p class="fake_header">Description</p>

Each Redfish resource is associated to a data type. The `types` command displays all selectable types available within the currently logged in server. Types include a name as well as version information. Types represent the schema used for the resource and indicate the version of the schema. Version information is `major.minor.errata` (for example: `SystemRoot.0.9.5`). Major versions are not backwards compatible, but everything else is.

<aside class="notice">See the iLO RESTful API Data Model Reference at <a href=" https://hewlettpackard.github.io/ilo-rest-api-docs/ilo5/#resource-definitions">https://hewlettpackard.github.io/ilo-rest-api-docs/</a> for a list and description of all the possible types.</aside>

<p class="fake_header">Parameters</p>

- **-h, --help**

Including the help flag will display help for the command.

- **--fulltypes**

Optionally include this flag if you would prefer to return the full type name instead of the simplified versions.

<p class="fake_header">Login Parameters</p>

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs in the data retrieval process.

<aside class="notice">Use this option to limit long login times.</aside>

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a starting point, the default path will be` /redfish/v1/`. (see [Path Option](#path-option) for more information).

<aside class="notice">The <b>path</b> flag can only be specified at the time of login, so if you are already logged into the server, the <b>path</b> flag will not change the path. If you are entering a command that isn&apos;t the <b>login</b> command, but includes your login information, you can still specify the path flag there.</aside>

<p class="fake_header">Inputs</p>

None

<p class="fake_header">Outputs</p>

None

### Select Command

> Select example commands:

> This command simultaneously logs in to the server at the provided URL (--url) with the provided username (-u) and password (-p), and selects the `ComputerSystem.` type.

<aside class="notice">
Adding a period after the selected type will ensure the selection is limited to one type. For example, selecting **Bios** will select both **Bios.v1_0_0** and **HpeBiosMapping.v2_0_0**. Selecting **Bios.** will only select the **Bios.v1_0_0** type.
</aside>

<aside class="notice">
Supplying the type version is not required. The selection **Bios.** and **Bios.v1_0_0** are identical.
</aside>

<pre>
iLOrest > <span style="color: #01a982; ">select ComputerSystem. --url xx.xx.xx.xx -u username -p password</span>
Discovering data...Done
iLOrest > select
Current selection: ComputerSystem.v1_4_0
</pre>

> Running the select command with no argument will return the current selection.

<pre>
iLOrest > <span style="color: #01a982; ">select</span>
Error: No type currently selected. Please use the 'types' command to
get a list of types, or pass your type by using the '--selector' flag.
iLOrest > select Bios.
iLOrest > <span style="color: #01a982; ">select</span>
Current selection: Bios.v1_0_0
</pre>

> Adding a period after the type selected, `Bios`, limits the selection, preventing accidentally also selecting anything else starting with `Bios`. This also removes the need to include the version.

<pre>
iLOrest > select Bios
iLOrest > select
Current selection: HpeBiosMapping.v2_0_0, Bios.v1_0_0
iLOrest > <span style="color: #01a982; ">select Bios.</span>
iLOrest > select
Current selection: Bios.v1_0_0
</pre>

> iLOrest caches data once a type has been selected for the first time. To refresh a type with the most up to date information use the `--refresh` option.

<pre>
iLOrest > select ComputerSystem.
iLOrest > get Oem/Hpe/PowerOnMinutes
Oem=
     Hpe=
          PowerOnMinutes=814088
iLOrest > <span style="color: #01a982; ">select ComputerSystem. --refresh</span>
iLOrest > get Oem/Hpe/PowerOnMinutes
Oem=
     Hpe=
          PowerOnMinutes=814089
</pre>

<p class="fake_header">Syntax</p>

select *[Type] [Optional Parameters]*

<p class="fake_header">Description</p>

Use `select` to choose a specific type to work with. Eligible types for selection are those listed by the types command. Because commands are entered individually in the RESTful Interface Tool, working with specific types requires that you highlight or select the particular type you are working with. Use the `select` command to highlight a type so that you can work with it.

<p class="fake_header">Usage in Other Commands</p>

Select a type from another command by including the *(--select, --selector)* option flag followed by the type to select. Not all commands have the `select` flag, run help on the command to see available options.

<p class="fake_header">Parameters</p>

- **Type**

Specify the type you want to select. Omitting a type to select will cause select to display the currently selected type.

- **-h, --help**

Including the help flag will display help for the command.

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this flag if second-level BIOS authentication is needed for the command to execute.

<aside class="notice">This option is only used on Gen 9 systems.</aside>

<p class="fake_header">Login Parameters</p>

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs in the data retrieval process.

<aside class="notice">Use this option to limit long login times.</aside>

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a starting point, the default path will be` /redfish/v1/`. (see [Path Option](#path-option) for more information).

<aside class="notice">The <b>path</b> flag can only be specified at the time of login, so if you are already logged into the server, the <b>path</b> flag will not change the path. If you are entering a command that isn&apos;t the <b>login</b> command, but includes your login information, you can still specify the path flag there.</aside>

<p class="fake_header">Inputs</p>
None

<p class="fake_header">Outputs</p>
None

### List Command

> List command examples:

> With a Type selected, run the command without arguments to list all properties within the selected type, including reserved properties. The full list has been truncated here for space.

<pre>
iLOrest > select Bios.
iLOrest > <span style="color: #01a982; ">list</span>
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
AdminOtherInfo=""
AdminPhone=""
AdvCrashDumpMode=Disabled
AdvancedMemProtection=AdvancedEcc
AsrStatus=Enabled
AsrTimeoutMinutes=Timeout10
AssetTagProtection=Unlocked
AttributeRegistry=BiosAttributeRegistryU32.v1_2_10
AutoPowerOn=RestoreLastState
BootMode=Uefi
...
</pre>

> Including the `-j`,`--json` option preserves the JSON structure of the type&apos;s information. The full list has been truncated here for space.

<pre>
iLOrest > select ComputerSystem.
iLOrest > <span style="color: #01a982; ">list --json</span>
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
</pre>

> To return specific properties or sub-properties include them as arguments. If the property you want to return is a sub-property add them in the form `Property/Sub-property`.

<pre>
iLOrest > <span style="color: #01a982; ">list @odata.id Boot/BootSourceOverrideMode AssetTag</span>
@odata.id=/redfish/v1/Systems/1/
AssetTag=""
Boot=
      BootSourceOverrideMode=UEFI
</pre>

<p class="fake_header">Syntax</p>

list *[Property(s)] [Optional Parameters]*

<p class="fake_header">Description</p>

Displays the current values of the properties of a selected type including reserved properties in human-readable and optionally JSON formats. Optionally include arguments to only return the values of those properties.

<aside class="notice">The list command does display reserved properties for types, while the get command does not.</aside>

<p class="fake_header">Parameters</p>

- **Property(s)**

Supplying a property or multiple properties will cause list to display the current value for that particular property or properties. Otherwise, if you wish to retrieve all the properties, run without arguments. Use this command only after a type has already been selected. If the value you are looking up is not available, it will return with no contents found for that property entry.

- **-h, --help**

Including the help flag will display help for the command.

- **--filter [FILTER_ATTRIBUTE=FILTER_VALUE]**

Optionally set a filter value for a filter attribute. This uses the provided filter for the currently selected type. (see [Filter Option](#filter-option) for more information).

<aside class="notice"> Use this flag to narrow down your results. For example, selecting a common type might return multiple objects that are all of that type. If you want to modify the properties of only one of those objects, use the filter flag to narrow down results based on properties.</aside>

- **---j, --json**

Optionally include this flag if you wish to change the displayed output to JSON format. Preserving the JSON data structure can make the information easier to parse.

<p class="fake_header">Login Parameters</p>

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs in the data retrieval process.

<aside class="notice">Use this option to limit long login times.</aside>

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a starting point, the default path will be` /redfish/v1/`. (see [Path Option](#path-option) for more information).

<aside class="notice">The <b>path</b> flag can only be specified at the time of login, so if you are already logged into the server, the <b>path</b> flag will not change the path. If you are entering a command that isn&apos;t the <b>login</b> command, but includes your login information, you can still specify the path flag there.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. You need to be logged in to use this flag.

<p class="fake_header">Inputs</p>
None

<p class="fake_header">Outputs</p>
None

<aside class="notice">arguments are not case-sensitive.</aside>

### Info Command

> Info command examples:

> Omitting a property when using the info command causes info to list all available options, given that you have already selected a type. The full list has been truncated for space.

<pre>
iLOrest > select Bios.
iLOrest > <span style="color: #01a982; ">info</span>
Info options:
AcpiHpet
AcpiRootBridgePxm
AcpiSlit
AdjSecPrefetch
AdminEmail
AdminName
AdminOtherInfo
AdminPhone
</pre>

> This command simultaneously logs in to the server at the provided URL (--url) with the provided username (-u) and password (-p), selects the `Power.` type, and displays the `PowerSupplies` information.

<pre>
iLOrest > <span style="color: #01a982; ">info PowerSupplies -u username -p password --url xx.xx.xx.xx --select Power.</span>
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
</pre>

> Multiple properties under the VirtualMedia type are specified. By passing multiple properties, it returns the information on all of the properties passed.

<pre>
iLOrest > select VirtualMedia.
iLOrest > <span style="color: #01a982; ">info Image WriteProtected</span>

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
</pre>

> Any Sub-Properties shown in an info response can be queried in the same form as set, list, and get: `Property/Sub-property`.

<pre>
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
iLOrest > <span style="color: #01a982; ">info Boot/BootSourceOverrideTarget</span>

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
</pre>

<p class="fake_header">Syntax</p>

info *[Property(s)] [Optional Parameters]*

<p class="fake_header">Description</p>

Displays detailed information about a property within a selected type. Information displayed includes the data type of the value, if the property is read-only or not, a brief description, possible values, and any sub-properties associated with the property.

<p class="fake_header">Parameters</p>

- **-h, --help**

Including the help flag will display help for the command.

- **--latestschema**

Optionally use the latest schema files instead of the default present in iLO.

<aside class="warning">This might cause errors in some data retrieval due to differences in the schema&apos;s organizational structure between versions.</aside>

- **-j, --json**

Optionally include this flag if you wish to change the displayed output to JSON format. Preserving the JSON data structure makes the information easier to read.

<p class="fake_header">Login Parameters</p>

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs in the data retrieval process.

<aside class="notice">Use this option to limit long login times.</aside>

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a starting point, the default path will be` /redfish/v1/`. (see [Path Option](#path-option) for more information).

<aside class="notice">The <b>path</b> flag can only be specified at the time of login, so if you are already logged into the server, the <b>path</b> flag will not change the path. If you are entering a command that isn&apos;t the <b>login</b> command, but includes your login information, you can still specify the path flag there.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. You need to be logged in to use this flag.

<p class="fake_header">Inputs</p>

None

<p class="fake_header">Outputs</p>

None

### Get Command

> Get example commands:

> Using get without any property specified shows the properties of the selected type. The full list is truncated for space.

<aside class="notice">
No reserved properties are shown with the get command.
</aside>
<aside class="notice">Arguments are not case-sensitive.</aside>

<pre>
iLOrest > select Bios.
iLOrest > <span style="color: #01a982; ">get</span>
AcpiHpet=Enabled
AcpiRootBridgePxm=Enabled
AcpiSlit=Enabled
AdjSecPrefetch=Enabled
AdminEmail=""
AdminName=Michael L
AdminOtherInfo=""
AdminPhone=""
...
</pre>

> Using get with a specific property lists the current value of that property, given that a type has already been selected.

<pre>
iLOrest > <span style="color: #01a982; ">get AdminName</span>
AdminName=Jason E
</pre>

> This command simultaneously logs in to the server at the provided URL (--url) with the provided username (-u) and password (-p), selects the `Bios.` type, and the `get` command is used to retrieve the `BootOrderPolicy` property of `Bios.`

<pre>
iLOrest > <span style="color: #01a982; ">get BootOrderPolicy --url xx.xx.xx.xx -u username -p password --select Bios.</span>
Discovering data...Done
BootOrderPolicy=RetryIndefinitely
</pre>

> Because the logout flag was included, the user is logged out of the server after the get command is performed.

<pre>
iLOrest > select ComputerSystem.
iLOrest > <span style="color: #01a982; ">get AssetTag --logout</span>
AssetTag=""
Logging session out.
</pre>

> Any Sub-Properties shown can be queried in the same form as set, list, and info: `Property/Sub-property`. You can also specify multiple properties to get simultaneously.

<pre>
iLOrest > select ComputerSystem.
iLOrest > get MemorySummary
MemorySummary=
               Status=
                       HealthRollup=OK
               TotalSystemPersistentMemoryGiB=0
               TotalSystemMemoryGiB=32
iLOrest > <span style="color: #01a982; ">get MemorySummary/Status MemorySummary/TotalSystemMemoryGiB AssetTag</span>
AssetTag=""
MemorySummary=
               Status=
                       HealthRollup=OK
               TotalSystemMemoryGiB=32
</pre>

> You can use the `noreadonly` flag to narrow down your results to only properties that can be changed.

<pre>
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
iLOrest > <span style="color: #01a982; ">get --noreadonly</span>
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
</pre>


<p class="fake_header">Syntax</p>

get *[Property(s)] [Optional Parameters]*

<p class="fake_header">Description</p>

Displays the current value of a property of the currently selected type. Use this command only after a type has already been selected. If the value you are looking up is not available, it will return with no contents found for that property entry.

<aside class="notice">The difference between the <b>get</b> command and the <b>list</b> command is that the <b>list</b> command displays details about the reserved properties, while the <b>get</b> command does not.</aside>

<p class="fake_header">Parameters</p>

- **Property(s)**

Supplying a property or multiple properties will cause get to display the current value for that particular property or properties. Otherwise, if you wish to retrieve all the properties, run without arguments. This is still assuming you have a type already selected.

- **-h, --help**

Including the help flag will display help for the command.

-**--selector=SELECTOR**

Optionally including the **selector** flag allows you to select a type to run while running the current command. Use this command to select a type without entering another command, or to work with a type that is different from the one currently selected.

- **--filter [FILTER_ATTRIBUTE=FILTER_VALUE]**

Optionally set a filter value for a filter attribute. This uses the provided filter for the currently selected type. (see [Filter Option](#filter-option) for more information).

<aside class="notice"> Use this flag to narrow down your results. For example, selecting a common type might return multiple objects that are all of that type. If you want to modify the properties of only one of those objects, use the filter flag to narrow down results based on properties.</aside>

- **-j, --json**

Optionally include this flag to change the displayed output to JSON format. Preserving the JSON data structure makes the information easier to read.

- **--noreadonly**

Optionally include this flag to display properties that are not read-only. This is useful to see what is configurable with the selected type(s).

<p class="fake_header">Login Parameters</p>

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs in the data retrieval process.

<aside class="notice">Use this option to limit long login times.</aside>

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a starting point, the default path will be` /redfish/v1/`. (see [Path Option](#path-option) for more information).

<aside class="notice">The <b>path</b> flag can only be specified at the time of login, so if you are already logged into the server, the <b>path</b> flag will not change the path. If you are entering a command that isn&apos;t the <b>login</b> command, but includes your login information, you can still specify the path flag there.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. You need to be logged in to use this flag.

<p class="fake_header">Inputs</p>

None

<p class="fake_header">Outputs</p>

None

### Set Command

<aside class="notice">Arguments are not case-sensitive.</aside>

> Set example commands:

> You can set multiple properties from the same type simultaneously. Add quotes around the property and value to add spaces in the value.

> <aside class="notice">Even though the get command shows **ServiceName** is set to **ExampleService** and **AdminName** set to **Jason E**, the commit command must be performed next for the changes to be updated on the server.</aside>

<pre>
iLOrest > select Bios.
iLOrest > get AdminName ServiceName
AdminName=""
ServiceName=""
iLOrest > <span style="color: #01a982; ">set "AdminName=Jason E" ServiceName=ExampleService</span>
iLOrest > get AdminName ServiceName
AdminName=Jason E
ServiceName=ExampleService
</pre>

> This command simultaneously logs in to the server at the provided URL (--url) with the provided username (-u) and password (-p), and then selects the `Bios.` type. The `set` command is used to set the `AdminName` property to `Jason E`, and the commit flag has been added to apply the changes to the server.

<pre>
iLOrest > <span style="color: #01a982; ">set "AdminName=Jason E" --url xx.xx.xx.xx -u username -p password --select Bios. --commit</span>
Discovering data...Done
Committing changes...
One or more properties were changed and will not take effect until system is reset.
</pre>


> To revert your changes on a type you can use the refresh flag.

<pre>
iLOrest > select Bios.
iLOrest > get AdminName
AdminName=Jason E
iLOrest > set AdminName=JohnDoe
iLOrest > get AdminName
AdminName=JohnDoe
iLOrest > <span style="color: #01a982; ">select Bios. --refresh</span>
iLOrest > get AdminName
AdminName=Jason E
</pre>



<p class="fake_header">Description</p>

Changes the value of a property in a currently selected type. Multiple properties can be set simultaneously.

<aside class="warning">The changes set will be reflected on the server only after committing them.</aside>

<p class="fake_header">Syntax</p>

set *[Property=Value] [Path] [Optional Parameters]*

<aside class="notice">The syntax formats used to set properties can be tricky if not done correctly. See the following examples to illustrate how the syntax works.</aside>

- `set AdminName=John`

**Correct** syntax. This sets the `AdminName` to John.

- `set "AdminName=John Doe"`

**Correct** syntax. If the property has a space in it, use quotes around the entire property/value pair. Here the `AdminName` has been set to John Doe.

- `set AdminName=""`

**Correct** syntax. Use this syntax, only quotes with no value, to remove the `AdminName` property value.

- `set AdminName=''`

**Correct** syntax. This is an alternate syntax that also removes the `AdminName` property and sets it to nothing. Use single quotes with nothing between them.

- `set AdminName='"'`

**Correct** syntax. This deletes the `AdminName` value.

- `set AdminName="John Doe"`

This is **incorrect** syntax, and will not be correctly reflected on the server.

<p class="fake_header">Parameters</p>

- **Property(s)**

Supplying a property and a value will stage an update to that property with the supplied value.

- **-h, --help**

Including the help flag will display help for the command.

- **--selector=SELECTOR**

Optionally including the **selector** flag allows you to select a type to run while running the current command. Use this flag when you wish to select a type without entering another command, or if you wish to work with a type that is different from the one you currently have selected.

- **--filter [FILTER_ATTRIBUTE=FILTER_VALUE]**

Optionally set a filter value for a filter attribute. This uses the provided filter for the currently selected type. (see [Filter Option](#filter-option) for more information).

<aside class="notice"> Use this flag to narrow down your results. For example, selecting a common type might return multiple objects that are all of that type. If you want to modify the properties of only one of those objects, use the filter flag to narrow down results based on properties.</aside>

- **--latestschema**

Optionally use the latest schema files instead of the default present in iLO.

<aside class="warning">This might cause errors in some data retrieval due to differences in the schema’s organizational structure between versions.</aside>

- **--commit**

Use this flag when you are ready to commit all pending changes. Some changes made in this way will be updated instantly, while others will be reflected the next time the server is started.

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this flag if second-level BIOS authentication is needed for the command to execute.

<aside class="notice">This option is only used on Gen 9 systems.</aside>

- **--reboot=REBOOT**

Use this flag to perform a reboot command function after completion of operations. For help with parameters and descriptions regarding the reboot flag, run `help reboot`.

- **--uniqueoverride**

Override the measures stopping the tool from writing over items that are system unique.

<p class="fake_header">Login Parameters</p>

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--usercert UserCACertificate**

Specify a user CA certificate file path for certificate based authentication with iLO.

<aside class="notice">A root user CA key is required.</aside>

- **--userkey UserCertKey**

Specify a user root ca key file path for certificate based authentication with iLO

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **--userpassphrase UserCAPassphrase**

Optionally specify a user root ca key file password for a password protected user root CA.

<aside class="notice">If the root CA key is password protected, but not included with '--userpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **--force_vnic**
<aside class="notice"> Option to Force login through iLO Virtual NIC.  Virtual NIC to be enabled in iLO. NOTE: iLO 5 required.</aside>     

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs in the data retrieval process.

<aside class="notice">Use this option to limit long login times.</aside>

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a starting point, the default path will be` /redfish/v1/`. (see [Path Option](#path-option) for more information).

<aside class="notice">The <b>path</b> flag can only be specified at the time of login, so if you are already logged into the server, the <b>path</b> flag will not change the path. If you are entering a command that isn&apos;t the <b>login</b> command, but includes your login information, you can still specify the path flag there.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. You need to be logged in to use this flag.

<p class="fake_header">Inputs</p>

None

<p class="fake_header">Outputs</p>

None

### Save Command

> Save example commands:

> Here, the server is logged into, Bios is selected, and the corresponding JSON file is saved to a local directory as the file ilorest.json. The ilorest.json file holds all the information regarding the selected type. Here, the save function was performed on the Bios type, so the `ilorest.json` file that was saved holds the information about `Bios.` The file holding that information looks like the following.

<pre>
iLOrest > <span style="color: #01a982; ">save --select Bios. --url xx.xx.xx.xx -u username -p password</span>
Discovering data...Done
Saving configuration...
Configuration saved to: ilorest.json
</pre>


> Example json file:

```json
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

> Use the multisave option to specify multiple types to save in a single file. This file can be sent to load in order to load multiple types with a single command. All type strings are delimited by a ','.

<pre>
iLOrest > <span style="color: #01a982; ">save --multisave Bios.,ComputerSystem.</span>
Discovering data...Done
Saving configuration...
Configuration saved to: ilorest.json
</pre>

> This command simultaneously logs in to the server at the provided URL (--url) with the provided username (-u) and password (-p), selects the `Bios.` type, saves the JSON response to a file called `BiosInfo.json` in a local directory, and then logs out.

<pre>
iLOrest > <span style="color: #01a982; ">save --select Bios. --url xx.xx.xx.xx -u username -p password -f BiosInfo.json --logout</span>
Discovering data...Done
Saving configuration...
Configuration saved to: BiosInfo.json
Logging session out.
</pre>

<p class="fake_header">Syntax</p>

save *[Optional Parameters]*

<p class="fake_header">Description</p>

Saves the JSON information of a selected type to a local file. Use this command along with the `load` command when you want to modify properties of a selected type through file editing. Using this command saves a local copy of your selected type’s JSON information.

<p class="fake_header">Parameters</p>

- **-h, --help**

Including the help flag will display help for the command.

- **-f FILENAME, --filename=FILENAME**

Use this flag if you wish to use a different filename than the default one. The default filename is `ilorest.json`.

- **--selector=SELECTOR**

Optionally including the **selector** flag allows you to select a type to run while running the current command. Use this flag when you wish to select a type without entering another command, or if you wish to work with a type that is different from the one you currently have selected.

- **--multisave=MULTISAVE**

Optionally include this flag to save multiple types of single file. Override the currently selected type.

- **--filter [FILTER_ATTRIBUTE=FILTER_VALUE]**

Optionally set a filter value for a filter attribute. This uses the provided filter for the currently selected type. (see [Filter Option](#filter-option) for more information).

<aside class="notice"> Use this flag to narrow down your results. For example, selecting a common type might return multiple objects that are all of that type. If you want to modify the properties of only one of those objects, use the filter flag to narrow down results based on properties.</aside>

- **-j, --json**

Optionally include this flag if you wish to change the displayed output to JSON format. Preserving the JSON data structure makes the information easier to read.

- **--encryption=ENCRYPTION**

Optionally include this flag to encrypt a file using the key provided.

<p class="fake_header">Login Parameters</p>

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--includelogs**

Optionally choose to set the **includelogs** flag. Doing so will include logs in the data retrieval process.

<aside class="notice">Use this option to limit long login times.</aside>

- **--path=PATH**

Optionally set a starting point for data collection. If you do not specify a starting point, the default path will be` /redfish/v1/`. (see [Path Option](#path-option) for more information).

<aside class="notice">The <b>path</b> flag can only be specified at the time of login, so if you are already logged into the server, the <b>path</b> flag will not change the path. If you are entering a command that isn&apos;t the <b>login</b> command, but includes your login information, you can still specify the path flag there.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. You need to be logged in to use this flag.

<p class="fake_header">Inputs</p>

None

<p class="fake_header">Outputs</p>

JSON file

Save a selected type to a file in JSON format. You can edit the values in the file, and then use the `load` command to upload the changes to the server.

### Load Command

> Load example commands:

> If no filename is supplied with the (-f, --filename) option, save looks for a file named `ilorest.json` in the current working directory. Save will automatically select the required type to make changes.

<pre>
iLOrest > <span style="color: #01a982; ">load</span>
Loading configuration...
Committing changes...
One or more properties were changed and will not take effect until system is reset.
</pre>

> This command simultaneously logs in to the server at the provided URL (--url) with the provided username (-u) and password (-p) and load a file from the current working directory called `biosconfig.json`.

<pre>
iLOrest > <span style="color: #01a982; ">load --url xx.xx.xx.xx -u username -p password -f biosconfig.json</span>
Discovering data...Done
Loading configuration...
Committing changes...
One or more properties were changed and will not take effect until system is reset.
</pre>

> This is the multi-server configuration setup. You must pass in a multi-server file in the following format.

<pre>
iLOrest > <span style="color: #01a982; ">load -m mpfilename.txt -f biosconfig.json</span>
Discovering data...Done
Loading configuration for multiple servers...
Logging session out.
Checking given server information...
Create multiple processes to load configuration concurrently to all servers...
Loading Configuration for xx.xx.xx.xx : SUCCESS
Loading Configuration for xx.xx.xx.xy : SUCCESS
All servers have been successfully configured.
</pre>

> All servers are configured concurrently. Because the filename tag is included, it searches for the file called `biosconfig.json` and loads that information to the servers. If no values have changed, the load process is complete. If any property values have changed, the changes are committed and the user is logged out of the server. Logs of the entire process are then stored in the same location as the iLOrest logs.

<pre>
--url 10.0.0.100 -u username -p password
--url 10.0.0.101 -u username -p password
--url 10.0.0.102 -u username -p password
--url 10.0.0.103 -u username -p password
</pre>


<p class="fake_header">Syntax</p>

load *[Optional Parameters]*

<p class="fake_header">Description</p>

Loads the server configuration from a file. Run this command without parameters to use the configuration found in the file called `ilorest.json`. Otherwise, you can point this command to use any file you specify. Use this function to change the properties of a type to new values. This command uploads the new values of the type’s properties to the server.

<aside class="notice"><b>Read-only</b> properties are skipped, and non-read only properties continue to be set.</aside>

<p class="fake_header">Parameters</p>

- **-h, --help**

Including the help flag will display help for the command.

- **-f FILENAME, --filename=FILENAME**

Use this flag if you wish to use a different filename than the default one. The default filename is `ilorest.json`.

- **--latestschema**

Optionally use the latest schema files instead of the default present in iLO.

<aside class="warning">This might cause errors in some data retrieval due to differences in the schema’s organizational structure between versions.</aside>

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this flag if second-level BIOS authentication is needed for the command to execute.

<aside class="notice">This option is only used on Gen 9 systems.</aside>

- **--uniqueoverride**

Override the measures stopping the tool from writing over items that are system unique.

- **-m MPFILENAME, --multiprocessing=MPFILENAME**

Optionally supply a filename to a multi-processing file to load concurrently on multiple servers.

- **-o OUTDIRECTORY, --outputdirectory=OUTDIRECTORY**

Use the provided directory to output data for a multiple server configuration.

- **--encryption=ENCRYPTION**

Optionally include this flag to decrypt a file using the key provided.

<p class="fake_header">Login Parameters</p>

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. You need to be logged in to use this flag.

<p class="fake_header">Inputs</p>

JSON Object

Input a JSON object to load from a custom configuration file, otherwise the configuration will default to looking for a file called `ilorest.json`.

<p class="fake_header">Outputs</p>

None

### Status Command

> Status example commands:

> The status command shows changes to be committed. The status command shows all pending changes, including changes for different types.

<pre>
iLOrest > <span style="color: #01a982; ">status</span>
Current changes found:
Bios.v1_0_0(/redfish/v1/systems/1/bios/settings/) (Currently selected)
        Attributes/ServiceName=simpleservice
ComputerSystem.v1_4_0(/redfish/v1/Systems/1/)
        AssetTag=newtag
</pre>

> Once changes are committed they no longer show in status.

<pre>
iLOrest > <span style="color: #01a982; ">status</span>
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
</pre>



<p class="fake_header">Syntax</p>

status *[Optional Parameters]*

<p class="fake_header">Description</p>

Displays all pending changes, regardless of which type is currently selected. All the changes that have not been committed yet will be shown.

<p class="fake_header">Parameters</p>

- **-h, --help**

Including the help flag will display help for the command.

<p class="fake_header">Inputs</p>

None

<p class="fake_header">Outputs</p>

None

### Commit Command

> Commit example commands:

> Commit all pending changes made by set by running the `commit` command.

<pre>
iLOrest > select ComputerSystem.
iLOrest > set AssetTag=newtag
iLOrest > select Bios.
iLOrest > set servicename=simpleservice
iLOrest > <span style="color: #01a982; ">commit</span>
Committing changes...
One or more properties were changed and will not take effect until system is reset.
The operation completed successfully.
</pre>


> If you do not commit before logging out changes will be lost.

<aside class="notice">
You must commit changes before logging out or settings will not be updated on the server.
</aside>

<pre>
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
</pre>

> Commit after running other commands by using the `--commit` option. This command simultaneously logs in to the server at the provided URL (--url) with the provided username (-u, --user) and password (-p, --password), selects the `ComputerSystem.` type, sets `AssetTag` to `""`, commits the change, and logs-out.

<pre>
iLOrest > <span style="color: #01a982; ">set AssetTag="" --url xx.xx.xx.xx -u username -p password --selector ComputerSystem. --commit --logout</span>
Discovering data...Done
Committing changes...
The operation completed successfully.
Logging session out.
</pre>



<p class="fake_header">Syntax</p>

commit *[Optional Parameters]*

<p class="fake_header">Description</p>

Applies all changes made during the current session. After you have changed one or more values for the property of a type, you need to commit those changes in order for those changes to be reflected on the server.

<p class="fake_header">Usage in Other Commands</p>

To commit at the end of a command, include the *--commit* option. Not all commands have the `commit` flag, run help on the command to see available options.

<p class="fake_header">Parameters</p>

- **-h, --help**

Including the help flag will display help for the command.

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this flag if second-level BIOS authentication is needed for the command to execute.

<aside class="notice">This option is only used on Gen 9 systems.</aside>

- **--reboot=REBOOT**

Use this flag to perform a reboot command function after completion of operations. For help with parameters and descriptions regarding the reboot flag, run `help reboot`.

<p class="fake_header">Inputs</p>

None

<p class="fake_header">Outputs</p>

None

### Logout Command

> Logout example commands:

> Use the logout command to end the session and disconnect from the server.

<pre>
iLOrest > login xx.xx.xx.xx -u username -p password
Discovering data...Done
iLOrest > <span style="color: #01a982; ">logout</span>
Logging session out.
</pre>

> Logout from another command using the `--logout` option.

<pre>
iLOrest > get AssetTag --select ComputerSystem. <span style="color: #01a982; ">--logout</span>
AssetTag=""
Logging session out.
</pre>


<p class="fake_header">Syntax</p>

logout *[Optional Parameters]*

<p class="fake_header">Description</p>

Use the `logout` command to exit your session and to disconnect from the server.

<p class="fake_header">Usage in Other Commands</p>

To log out at the end of a command, include the *--logout* option. Not all commands have the `logout` flag, run help on the command to see available options.

<p class="fake_header">Parameters</p>

- **-h, --help**

Including the help flag will display help for the command.

<p class="fake_header">Inputs</p>

None

<p class="fake_header">Outputs</p>

None

### Exit Command

> Exit example commands

> This command exits the interactive shell.

<pre>
iLOrest > <span style="color: #01a982; ">exit</span>
Logging session out.
Bye for now
</pre>

<p class="fake_header">Syntax</p>

exit *[Optional Parameters]*

<p class="fake_header">Description</p>

Use the `exit` command if you wish to exit from the interactive shell. Using exit will also log you out and disconnect you from the server.

<p class="fake_header">Parameters</p>

- **-h, --help**

Including the help flag will display help for the command.

<p class="fake_header">Inputs</p>

None

<p class="fake_header">Outputs</p>

None
