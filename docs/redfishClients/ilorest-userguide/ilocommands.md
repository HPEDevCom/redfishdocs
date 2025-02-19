---
seo:
  title: iLO commands
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# iLO Commands

This section includes advanced functions, also called **macro-commands**,
for manipulating HPE iLO using HPE iLOrest. These commands include operations
such as turning the server hardware on and off, resetting iLO,
and updating firmware.

iLO commands that are supported for a specific HPE server generation:

- `certificate`: Gen10 and above. Limited functionality for Gen9
- `fwintegritycheck`: Gen10 and above
- `iloclone`: Gen10 and above (**deprecated** in iLOrest 2.4.1 and [removed](/docs/redfishclients/ilorest-userguide/changelog/#version-321) in 3.2.1)
- `sigrecompute`: Gen9

## Backuprestore Command

### Syntax

`backuprestore [OPTIONS]`

### Description

Backup and restore iLO to a server using a `.bak` backup file.

:::info NOTE
Use this command to only restore the machine from which the backup
file was created.

To apply one configuration in multiple systems, refer to
the `serverclone` [command](#serverclone-command).

This command is available only in remote mode.
:::

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **-f FILENAME, --filename=FILENAME**

Use this command to specify the which backup file to restore.
By default, the command will try to find a `.bak` file in
the current working directory.

- **--filepass=FPASS**

Use the provided password when creating the backup file.
The same password must be used for restoring.

### Login Parameters

The following parameters can be included to login to a server
in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along
with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password
and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL
flags to login. Use the provided iLO password corresponding to the
username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server
after this command is completed. Using this flag when not logged
in will have no effect.

### Examples

To create a backup (`.bak`) file run the command with the `backup` argument.

```shell
ilorest backuprestore backup
Downloading backup file HPE_Kappa_20190203_0012.bak...Download complete.
```

To restore a server using the `.bak` file run the command with
the `restore` argument. By default the command will search for a
(`.bak`) file in the current working directory.
Specify a (`.bak`) file using the `(-f, --filename)` option.

```shell
ilorest backuprestore restore
Restore in progress. iLO while be unresponsive while the restore completes.
Your session will be terminated.
Logging session out.
```

## Certificate Command

### Syntax

`certificate [SUBCOMMAND] [Optional Parameters]`

### Description

Command for importing both iLO and login authorization
certificates as well as generating iLO certificate signing requests.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

### SUBCOMMAND

Use `ilorest certificate SUBCOMMAND --help` to print the
corresponding embedded help syntax.

- `gen_csr` - Creates new Certificate Signing Request (CSR)
- `getcsr` - Downloads the CSR into default file `certificate.txt`.
- `view` - Prints SCEP certificate with option `--scep_cert` or
  HTTP TLS/SSL certificate with option `--https_cert`.
- `auto_enroll` - Configures new SCEP certificate.
- `import` - Imports any type of certificate into iLO
  (CA cert, TLS/SSL, CRL, SCEP, IDEVID, LDEVID, SYSTEMIAK...).
- `export` - Exports certificate locally
  (IDEVID, LDEVID, SYSTEMIAK, PLATFORMCERT).
  
Refer to the [examples](#examples-1) for usage.

**_Import Arguments_**

- **--ca_cert**

Declare the import is an X.509 formatted user CA certificate.

- **--scep_cert**

Upload a SCEP certificate.

- **--crl_cert**

Provide iLO with a URL to retrieve the X.509 formatted CA certificate.

- **--tls_cert**

Declare the import is a X.509 formatted  TLS/SSL certificate.

- **--idevid_cert**

Upload an IDEVID certificate.

- **--ldevid_cert**

Upload an LDEVID certificate.

- **--systemiak_cert**

Upload an SystemIAK certificate.

- **--systemidevid_cert**

Upload a system IDEVID certificate.

- **--platform_cert**

Upload a system PlatformCert certificate.

- **--from_url**

Specify a URL as the source of the import.

:::info NOTE

A certificate must be imported from a file or from a URL
(only supported for TLS/SSL certificates).

:::

**_Export Arguments_**

- **--idevid_cert**

Declare the export is an X.509 formatted IDevID certificate.

- **--ldevid_cert**

Declare the export is an X.509 formatted LDevID certificate.

- **--systemiak_cert**

Declare the export is an X.509 formatted SystemIAK certificate.

- **--systemidevid_cert**

Declare the export is an X.509 formatted SystemIDevID certificate.

- **--platform_cert**

Declare the export is an X.509 formatted Platform certificate.

- **--id**

Specify the id of the certificate to retrieve from the collection.
Requires a certificate type selection.

- **-f File, --filename File**

Specify the filename/filepath for the resulting certificate to be saved to.
By default, the certificate is printed to the console.

**_getcsr Arguments_**

- **--TLS_CERT**

Declare retrieval of an X.509 formatted TLS/SSL certificate
signing request (CSR).

- **--PLATFORM_CERT**

Declare retrieval of an X.509 formatted Platform certificate
signing request (CSR).

- **-f File, --filename File**

Specify the filename/filepath for the resulting certificate
signing request (CSR) to be saved to. By default,
the CSR is printed to the console.

### Login Parameters

The following parameters can be included to login to a server
in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to
the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the
password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along
with the user and URL flags to login. Use the
provided iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the
server after this command is completed. Using this
flag when not logged in will have no effect.

### Examples

To Generate an HTTP TLS/SSL certificate signing request use
the `gen_csr` argument along with the following information
`Organization Name`,
`Organization Unit`, `Common Name`, `Country`, `State`, `City`, `Include IP`.
Use quotes to include parameters which containing whitespaces.
The `Include IP` argument is a Boolean (`True`, `False`).

```shell
ilorest login
Discovering data...Done
ilorest certificate csr "Hewlett Packard Enterprise" "ILORestGroup" "iLOrest" "US" "Texas" "Houston" False 
The operation completed successfully.
```

:::info NOTE

- Please make sure the order of arguments is correct.
  The parameters are extracted based on their position in the arguments list.
- Some certificate types (i.e. SCEP) are not available on Gen9.
- Use the `singlesignon` command to import single sign on certificates.
- Use quotes to include parameters with whitespaces, when
  generating a CSR. For example: certificate gen_csr
  "Hewlett Packard Enterprise"
  "iLOrest Group" "CName" "United States" "Texas" "Houston" False
- Platform certificates are specific to diagnostic usage purposes.

:::

To retrieve an HTTP TLS/SSL certificate signing request
use the `getcsr --TLS_CERT` argument. The default
filename is `certificate.txt`, saved to the current working
directory. Including the _(-f, --filename)_ option will
change the default name.

```shell
ilorest certificate getcsr --TLS_CERT
Discovering data...Done
Certificate saved to: certificate.txt
```

To import an HTTP TLS/SSL signed certificate use the `import --tls_cert`
argument followed by a file containing the certificate.

```shell
ilorest certificate import --tls_cert certfile.txt
The operation completed successfully.
```

:::success TIP

With iLO 5 firmware 2.78 and later or iLO 6 firmware 1.30 and later,
it is possible to import/upload into iLO, a file containing an https
TLS/SSL certificate with its associated private key.
This combined file can contain a wildcard certificate and associated
private key.

Use the following process:

1. Generate a CSR for iLO(s) as well as private key.
2. Get the the CSR signed.
3. Combine both the private key and the signed certificate
   into a single file.
4. Use the `certificate import --tls_cert`
   command (see example  above) to upload the combined file to the iLO(s).
5. Wait for the iLO(s) to reset.

:::

To import a CA certificate, use the `import --ca_cert`
argument followed by a file containing the certificate.

```shell
ilorest certificate import --ca_cert certfile.txt
The operation completed successfully.
```

To import a Certificate Revocation List (CRL) use
the `import --crl_cert` argument followed by the URL
to the certificate list file.

```shell
ilorest certificate import --crl_cert https://hostname/location/to/cert.txt
The operation completed successfully.
```

To view an HTTP TLS/SSL certificate, use the `certificate`
command with `view` subcommand followed by option `--https_cert`

```shell
ilorest certificate view --https_cert
Https Certificate details ...
Id:HttpsCert
target:/redfish/v1/Managers/1/SecurityService/HttpsCert/Actions/HpeHttpsCert.GenerateCSR/
target:/redfish/v1/Managers/1/SecurityService/HttpsCert/Actions/HpeHttpsCert.ImportCertificate/
CertificateSigningRequest:None
Issuer:C = US, ST = Texas, L = Houston, O = HPE, OU = Compute, CN = myhost.my.domain
SerialNumber:23
Subject:C = FR, ST = Region Sud, L = Sophia-Antipolis, O = HPE, OU = Compute, CN = lj.lab
ValidNotAfter:2033-02-12T09:59:35Z
ValidNotBefore:2023-02-15T09:59:35Z
```

To view a `scep` certificate, use the `certificate` command with
`view` subcommand followed by option `--scep_cert`

```shell
ilorest certificate view --scep_cert
Scep Certificate details ...
Id:AutomaticCertificateEnrollment
Certificate@Redfish.AllowableValues:['Certificate']
target:/redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment/Actions/HpeAutomaticCertEnrollment.ImportCACertificate/
CACertificateName:/DC=local/DC=ilorest/CN=ilorest-ROOT-CA
CertificateEnrollmentStatus:Disabled
ChallengePassword:None
ServerUrl:https://10.10.10.10/certsrv/mscep/mscep.dll
ServiceEnabled:False
City:Americas
CommonName:ILOSerNum-ACC.its.hpecorp.net
Country:US
IncludeIP:False
OrgName:Hewlett Packard Enterprise
OrgUnit:ISS
State:Houston
````

To import a scep certificate, use `certificate` command with the `import`
subcommand followed by option `--scep` and  provide the scep certificate file

```shell
ilorest certificate import --scep_cert scep.txt
Imported the scep certificate successfully
```

To import a CA certificate, use the `certificate` command with the
`import` subcommand followed by option `--ca_cert` provided with
CA cert file

```shell
ilorest certificate import --ca_cert ca.cer
Imported CA certificate successfully
```

To import IDEVID certificate, use certificate command with
import subcommand followed by option --idevid_cert
provided with IDEVID cert file

```shell
ilorest certificate import --idevid_cert IDEVID.cer
Imported the iLOIDevID certificate successfully
```

To export LDEVID certificate, use certificate command with
export subcommand followed by option `--ldevid_cert` and `-f`
with a file name in which the certificate will be stored.

```shell
ilorest certificate export --ldevid_cert -f myLDEVID.cer
The certificate was saved to: myLDEVID.cer
```

To export SystemIAK certificate use certificate command with
export subcommand followed by option `--systemiak_cert` and `-f`
with a file name in which the certificate will be stored.

```shell
ilorest certificate export --systemiak_cert -f mySystemIAK.cer
The certificate was saved to: mySystemIAK.cer
```

To auto enroll, use certificate command with `auto_enroll`
subcommand followed by required arguments.

```shell
ilorest certificate auto_enroll "Hewlett Packard Enterprise" "ILORestGroup" "iLOrest" "US" "Americas" "Houston" "https://10.10.10.10/certsrv/mscep/mscep.dll" "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" "True" "False"
```

## Clearrestapistate Command

### Syntax

`clearrestapistate [Optional Parameters]`

### Description
Clears the persistent RESTful API state.
Generally not needed and shouldn't be done
unless there are issues viewing info, setting, or committing data.

:::warning Warning
Some types such as Bios, Icsci, and SmartStorageConfig
will not be available until a system reboot occurs after
running this command.
:::

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

### Login Parameters

The following parameters can be included to login
to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet,
use the provided iLO URL along with the user
and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet,
use this flag along with the password
and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with
the user and URL flags to login. Use the provided iLO
password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the
server after this command is completed. Using this flag
when not logged in will have no effect.

### Examples

To Clear the persistent RESTful API state run the command without arguments.

```shell
ilorest clearrestapistate
The operation completed successfully.
```

:::info NOTE

Pending iLO configuration settings are stored in volatile memory.
If `clearrestapistate` is utilized prior to a requested reboot or iLO reset,
provider data be purged and the handover of updated configuration data
to the relevant firmware controller will not be made as anticipated
during POST or upon iLO reset.
BIOS, SmartArray and ethernet management NICs are all potentially affected.
:::

## Computeopsmanagement Command

### Syntax

`computeopsmanagement [connect/disconnect/status] [OPTIONS]`

### Description

This command enables your servers to be discovered,
monitored and managed through the
<a href="https://www.hpe.com/us/en/hpe-greenlake-compute-ops-management.html" target="_blank">HPE GreenLake for Compute Ops Management</a> (COM)
also known as
[CloudConnect](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_manager_resourcedefns{{process.env.LATEST_FW_VERSION}}/#oemhpecloudconnect).

Refer to the related `HpeiLO.*CloudConnect` [actions](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_manager_resourcedefns{{process.env.LATEST_FW_VERSION}}/#actions)
for more detail.

### Parameters

- **connect**

Use this to connect.

- **disconnect**

Use this to disconnect.

- **status**

Use this to check the status of connection.

- **-h, --help**

Including the help flag will display help for the command.

- **--proxy PROXY_SERVER or --proxy None**

Use this to use web-proxy if needed for connecting.

- **--activationkey=ACTIVATION_KEY**

Use this while connecting and providing activation key.

- **-j, --json**

Use this command to change the displayed output to JSON format.
Preserving the JSON data structure makes the information easier to parse.

### Login Parameters

The following parameters can be included to login to a server
in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the
server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the
password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the
user and URL flags to login. Use the provided iLO password
corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after
this command is completed. Using this flag when not logged in will
have no effect.

### Examples

To enable your servers to be discovered,
monitored and managed through Compute Ops Management.

:::info NOTE
The activation key needed to connect to COM
is the customer account ID of HPE GreenLake.

Obtain the account ID by visiting the
HPE GreenLake portal -> Manage -> Account Details card.
:::

```shell computeopsmanagement

ilorest computeopsmanagement connect --activationkey keyvalue
Connecting computeopsmanagement...
computeopsmanagement connection is successful
```

```shell Generic POST command
POST /redfish/v1/Managers/1/Actions/Oem/Hpe/HpeiLO.EnableCloudConnect

Payload:
{"ActivationKey": "Keyvalue"}

```

To disconnect from Compute Ops Management.

```shell computeopsmanagement
ilorest computeopsmanagement disconnect
The operation completed successfully.
```

```shell Generic POST
POST /redfish/v1/Managers/1/Actions/Oem/Hpe/HpeiLO.DisableCloudConnect

Payload: {}
```

To check the status of Compute Ops Management

```shell computeopsmanagement
ilorest computeopsmanagement status
------------------------------------------------
Compute Ops Management Status
------------------------------------------------
Compute Ops Management Status : NotEnabled
```

```shell get
ilorest get Oem/Hpe/CloudConnect/CloudConnectStatus --select=Manager.
Oem=
     Hpe=
          CloudConnect=
                        CloudConnectStatus=NotEnabled
```

## Directory Command

### Syntax

`directory [kerberos/ldap/test] [OPTIONS]`

### Description

This command will view/update Kerberos or
LDAP directory settings, add/delete directory roles,
and test directory settings.

### Parameters

- **ldap**

Use this parameter to update or view LDAP settings.

- **kerberos**

Use this parameter to update or view Kerberos
(Active Directory) settings.

- **test**

Use this parameter to perform directory tests.

- **-h, --help**

Including the help flag will display help for the command.

- **--enable, --disable**

Use this option to enable or disable the LDAP or Kerberos services.

- **--serviceaddress=SERVICEADDRESS**

Use this option to set the service address of the LDAP or Kerberos Services.

- **--port=PORT**

Use this option to set the port of the LDAP or Kerberos services.

- **--realm=REALM**

Use this option to set the Kerberos realm.

- **--keytab=KEYTAB**

Use this option to import a Kerberos Keytab by its URI location.

- **--enablelocalauth, --disablelocalauth**

Use this option to enable or disable the authentication for local accounts.

- **--authentication=AUTHMODE**

Use this option to choose a LDAP authentication mode. The available modes
are DefaultSchema (Directory Default Schema or Schema- free)
and ExtendedSchema (HPE Extended Schema).

- **--addsearch=SEARCH, --removesearch=SEARCH**

Use this option to add or remove search strings for generic LDAP services.

- **--addrolemap=ROLES, --removerolemap=ROLES**

Use this option to add or remove Role Mapping(s) for the LDAP services.

:::info NOTE

When adding role map, SID is optional.
:::

- **-j, --json**

Use this command to change the displayed output to JSON format.
Preserving the JSON data structure makes the information easier to parse.

### Login Parameters

The following parameters can be included to
login to a server in the same line as the command is run.

**--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the server
in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with
the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user
and URL flags to login. Use the provided iLO password corresponding
to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after
this command is completed. Using this flag when not logged in will
have no effect.

### Examples

To view current LDAP or kerberos settings run the command
with the `ldap` or `kerberos` arguments.

```shell
ilorest directory ldap
Discovering data...Done
LDAP settings:
--------------------------------
Enabled: False
Service Address: Not Set
Local Account Authorization: Enabled
Port: 55
Authentication Mode: Disabled
Search Settings:
        Search 1: blah
Remote Role Mapping(s):
        Local Role: dirgroupb3d8954f6ebbe735764e9f7c
        Remote Group: Administrators
        Local Role: dirgroup9d4546a03a03bb977c03086a
        Remote Group: Authenticated Users:S-1-5-11
ilorest directory kerberos
Kerberos settings:
--------------------------------
Enabled: False
Service Address: Not Set
Local Account Authorization: Enabled
Port: 1337
Realm: Not Set
Remote Role Mapping(s):
        Local Role: dirgroupb3d8954f6ebbe735764e9f7c
        Remote Group: Administrators
        Local Role: dirgroup9d4546a03a03bb977c03086a
        Remote Group: Authenticated Users:S-1-5-11
```

To add credentials to a service specify the service
with the `ldap` or `kerberos` argument followed by
the `USERNAME` and `PASSWORD` of the directory.
The `--enable` flag was passed because previously the directory was disabled.

```shell
ilorest directory ldap USERNAME PASSWORD --enable
Changing settings...
The operation completed successfully.
```

To specify the service address (`--serviceaddress`), port (`--port`),
authentication schema (`--authentication`), and/or search strings
(`--addsearch/--removesearch`) specify their respective options.
Authentication schema and search strings can only be used with the
LDAP directory.

:::info NOTE

The `--addsearch` value needs to be double quoted in order to escape
the semicolon character (;) from its potential shell command separator
meaning.
:::

```shell
ilorest directory ldap --serviceaddress x.x.y.z --addsearch "string3;string4" --authentication=ExtendedSchema --port 199
Changing settings...
The operation completed successfully.
ilorest directory ldap
LDAP settings:
--------------------------------
Enabled: True
Service Address: x.x.y.z
Local Account Authorization: Enabled
Port: 199
Authentication Mode: ExtendedSchema
Search Settings:
        Search 1: blah
        Search 2: string3
        Search 3: string4
Remote Role Mapping(s):
        Local Role: dirgroupb3d8954f6ebbe735764e9f7c
        Remote Group: Administrators
        Local Role: dirgroup9d4546a03a03bb977c03086a
        Remote Group: Authenticated Users:S-1-5-11
```

To specify the realm (`--realm`) and/or key tab (`--keytab`) specify
their respective options. Realm and key tab can only be used with
the Kerberos directory.

```shell
ilorest directory kerberos --realm Forgotten --keytab https://location/to/keytab.txt
Changing settings...
The operation completed successfully.
Adding keytab...
The operation completed successfully.
```

To add directory role maps include the `ldap` argument with the
`--addrolemap` option with the form `LocalRole:RemoteRoleGroup:OptionalSID`.
Multiple rolemaps can be added with '#' as seperator. Available roles
can be found in the help text.

```shell
ilorest directory ldap --addrolemap "Administrator:Owners#ReadOnly:Reading Users:S-1-7-23"
Changing settings...
The operation completed successfully.
ilorest directory ldap
LDAP settings:
--------------------------------
Enabled: True
Service Address: x.x.y.z:199
Local Account Authorization: Enabled
Port: 199
Authentication Mode: ExtendedSchema
Search Settings:
        Search 1: blah
        Search 2: string3
        Search 3: string4
Remote Role Mapping(s):
        Local Role: dirgroupb3d8954f6ebbe735764e9f7c
        Remote Group: Administrators
        Local Role: dirgroup9d4546a03a03bb977c03086a
        Remote Group: Authenticated Users:S-1-5-11
        Local Role: dirgroupb3b74668da9b6b0bc6864223
        Remote Group: Owners
        Local Role: dirgroup8e167f4006abce0ae22977d4
        Remote Group: Reading Users:S-1-7-23
```

To add custom local role maps include the `ldap` argument
with the `--addrolemap` option with the form
`PrivNum1;PrivNum2;...:RemoteRoleGroup:OptionalSID`.
Multiple rolemaps can be added with '#' as seperator.
Numbers of privileges can be found in the help text.

```shell
ilorest directory ldap --addrolemap "10;2;3:Another remote role:S-1-7-23"
Changing settings...
The operation completed successfully.
Updating privileges of created role maps...
The operation completed successfully.
Updated privileges for ANOTHERETSTT
The operation completed successfully.
Updated privileges for A TESTTT:S-1-7-23
```

To remove directory role maps include the `ldap` argument with
the `--removerolemap` option specifying the `LocalRole` of the
role map to remove. Multiple role maps can be removed by
separating them with '#'.

```shell
ilorest directory ldap --removerolemap "dirgroupb3b74668da9b6b0bc6864223#dirgroup8e167f4006abce0ae22977d4"
Changing settings...
The operation completed successfully.
ilorest directory ldap
LDAP settings:
--------------------------------
Enabled: True
Service Address: x.x.y.z:199
Local Account Authorization: Enabled
Port: 199
Authentication Mode: ExtendedSchema
Search Settings:
        Search 1: blah
        Search 2: string3
        Search 3: string4
Remote Role Mapping(s):
        Local Role: dirgroupb3d8954f6ebbe735764e9f7c
        Remote Group: Administrators
        Local Role: dirgroup9d4546a03a03bb977c03086a
        Remote Group: Authenticated Users:S-1-5-11
```

To perform directory tests use the `test` argument followed by
`start` to start the directory test, `stop` to stop the directory
test, or `viewresults` to view the results of the last directory test.

```shell
ilorest directory test start
Starting the directory test. Monitor results with command: directory viewresults
[200] The operation completed successfully.
ilorest directory test stop
Stopping the directory test.
[200] The operation completed successfully.
ilorest directory test viewresults
Test: Directory Server DNS Name
------------------------
Status: Failed
Notes: Unable to resolve host name x.x.y.z:199

Test: Ping Directory Server
------------------------
Status: Failed
Notes:

Test: Connect to Directory Server
------------------------
Status: Failed
Notes: Unable to connect to the directory server LDAP port within timeout. Verify directory server address. Use this to ensure iLO can correctly connect and use the directory server.

Test: Connect using SSL
------------------------
Status: Failed
Notes: Unable to connect to directory server within timeout.

Test: Bind to Directory Server
------------------------
Status: NotRun
Notes:

Test: Directory Administrator login
------------------------
Status: NotRun
Notes:

Test: User Authentication
------------------------
Status: NotRun
Notes:

Test: User Authorization
------------------------
Status: Failed
Notes:

Test: Directory User Contexts
------------------------
Status: NotRun
Notes:

Test: LOM Object exists
------------------------
Status: NotRun
Notes:

```

:::info NOTE

To change settings, you must first enable the directory.
You can use the `--enable` option to enable a directory
in the same command as settings are set.
:::

When creating custom local roles use the following numbers
to specify privileges.

```shell
LOCAL PRIVILEGES:
1. Login
2. Remote Console
3. User Config
4. iLO (Manager) Config
5. Virtual Media
6. Virtual Power and Reset
7. Host NIC Config
8. Host Bios Config
9. Host Storage Config
10. System Recovery Config
11. Self Password Change
12. Configure Components

LOCAL ROLES:
- ReadOnly
- Operator
- Administrator
```

## Disableilofunctionality Command

### Syntax

`disableilofunctionality [Optional Parameters]`

### Description
Disable iLO functionality on the current logged in server.

:::info NOTE

Add the --force flag to ignore critical task checking before disabling iLO.
:::

:::warning Warning
This will render iLO unable to respond to network operations
and Redfish will be unavailable until iLO functionality is restored.
:::

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--force**

Ignore any critical task checking and force disable iLO.

### Login Parameters

The following parameters can be included to login to a server
in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the server in the same
command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the
password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user
and URL flags to login. Use the provided iLO password corresponding
to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after
this command is completed. Using this flag when not logged in will
have no effect.

### Examples

To Disable iLO functionality run the command without arguments.

```shell
ilorest disableilofunctionality
The operation completed successfully.
Disabling iLO functionality. iLO will be unavailable on the logged in server until it is re-enabled manually.
[200] The operation completed successfully.
```

## Eskm Command

### Syntax

`eskm [Command]* *[Optional Parameters]`

### Description
Command for testing connections to the Enterprise Secure Key Manager
system and clearing the Enterprise Secure Key Manager logs.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

### Login Parameters

The following parameters can be included to login
to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the server
in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the
password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the
user and URL flags to login. Use the provided iLO password
corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server
after this command is completed. Using this flag when not
logged in will have no effect.

### Examples

To clear the ESKM logs use the `clearlog` argument.

```shell
ilorest eskm clearlog
The operation completed successfully.
```

To test the ESKM connections use the `testconnections`
argument. The response will indicate if the system can
connect properly or if there is an issue.

```shell
ilorest eskm testconnections
Enterprise Secure Key Manager Servers are not configured.
```

## Ethernet command

### Syntax

`ethernet [Command] [Optional Parameters]`

### Description

Command for managing the
[ethernet interfaces](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_network_resourcedefns{{process.env.LATEST_FW_VERSION}}/#ethernetinterface)
of a server, as well as various iLO resources like
[network protocols](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_manager_resourcedefns{{process.env.LATEST_FW_VERSION}}/#managernetworkprotocol),
[NTP servers](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#ntpservers-array)
and [time zone](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#timezone).

:::info Note

Although some network adapters are able to communicate with the Ethernet protocol,
the DMTF distinguishes the `EthernetInterface`
<a href="https://redfish.dmtf.org/schemas/v1/EthernetInterface.json" target="_blank">schema/data type</a>
from the `NetworkAdapter`
<a href="https://redfish.dmtf.org/schemas/v1/EthernetInterface.json" target="_blank">schema/data type</a>.

As a consequence, the `ethernet` command does not address the `NetworkAdapter` data type.
Use the global `get`, `list` and `set`
[commands](/docs/redfishclients/ilorest-userguide/globalcommands/)
to manage network adapters.

:::

### Parameters

- **default**

Run without arguments or with the `default` parameter, the `ethernet`
command prints the properties
on standard output (stdout) in a non-JSON format.

- **Save**

Save the ethernet interfaces and manager properties in a JSON formatted file.
The default output filename is `eth.json` in the local folder.

:::success Tip

You can edit this file at will and use the
`ethernet load` command to load it in a
compatible system.

:::

- **Load**

Load ethernet interfaces and iLO properties from
a file generated by the `ethernet save` command.
The default input filename is `eth.json` in the local folder.

:::success TIP

Use the `--force_network_config` to force
the load of network configuration.

:::

### Optional parameters

- **-h, --help**

Show the help message and exit.

- **--encryption ENCRYPTION**

Optionally include this flag to encrypt/decrypt a file using the key provided.

- **-f ETHFILENAME, --ethfile ETHFILENAME**

Optionally specify a JSON filename as an alternative to the default `eth.json`.

- **--force\_network\_config**

Force loading iLO network configuration. This parameter is only relevant to
the `load` sub-command. Refer to the
[Configure iLO IP addresses](/docs/redfishclients/ilorest-userguide/examplecommandsscripts/#configure-ilo-ip-addresses)
section for a detailed example.

- **--enable_vnic**

Enable virtual network interface of management network.

- **--disable_vnic**

Disable virtual network interface of management network.

- **--proxy http://proxy.company.net:8080**

Configure Proxy Settings. Provide a proxy server and port

- **--proxy None**

Clear Proxy Settings.

- **--enable_nic 1,2,3**

Enable network interfaces by listing each interface to be enabled. **Note**: Non-existent interfaces will be omitted from configuration.

- **--disable_nic 1,2,3**

Disable network interfaces by listing each interface to be disabled. **Note**: Non-existent interfaces will be omitted from configuration.

- **--nameservers 8.8.8.8,1.1.1.1,2.2.2.2 OR ethernet --nameservers dns\_resolver1.aws.com,dns\_resolver2.aws.com**

Configure Domain Name Servers (DNS) in a comma separated
list (\<DNS1\>,\<DNS2\>,\<DNS3\>).

Avoid space characters in the list. Perform an **iLO reset** to modify effectively the supplied
parameters.

- **--network_ipv4 \<ipv4 address\>,\<ipv4 gateway\>,\<ipv4 network mask\>.**

Configure Static IPv4 settings on the enabled iLO network port (Dedicated or Shared).
Provide a list of network settings in a comma separated list.

Avoid space characters in the list. Perform an **iLO reset** to modify effectively the supplied
parameters.

:::warning Warning

Upon reset, open sessions (GUI, rest) are closed abruptly. You need to reconnect using the
network information present in the `--network_ipv4` .

Errors in the `Gateway` or `SubnetMask` may prevent you to reconnect.

Read these [best practices](/docs/redfishclients/ilorest-userguide/examplecommandsscripts/#network-configuration-best-practices)
before modifying the iLO IP network configuration.
:::

### Examples

To enable Virtual NIC use the `--enable_vnic` argument.

```shell
ilorest ethernet --enable_vnic
Enabling Virtual NIC...
[200] The operation completed successfully.
Warning: Resetting iLO...
Warning:
After iLO resets, the session will be terminated.
Please wait for iLO to initialize completely before logging in again.
This process may take up to 3 minutes to complete.

A management processor reset is in progress.
You will need to re-login to access this system...
iLOrest return code: 0
```

To enable proxy use the `--proxy <proxyserver_withport>` argument.

```shell
ilorest ethernet --proxy https://proxy.example.com:8080
Enabling Proxy configuration...
[200] The operation completed successfully.
iLOrest return code: 0
```

To clear proxy use the `--proxy None` argument.

```shell
ilorest ethernet --proxy None
Clearing Proxy configuration...
[200] The operation completed successfully.
iLOrest return code: 0
```

The following example configures the active iLO management network
port (Dedicated or Shared) with
an IPv4 address, a gateway IP address and the network
mask. Then it performs a reset of the iLO to modify effectively
these properties.

```shell
ilorest  ethernet --network_ipv4 192.168.1.56,192.168.1.2,255.255.252.0
The operation completed successfully.

ilorest iloreset
A management processor reset is in progress.
```

:::success TIP

To be able to recover in case of a network misconfiguration,
save the IPv6 link-local or MAC address
as explained in this
[best practice](/docs/redfishclients/ilorest-userguide/examplecommandsscripts/#network-configuration-best-practices)
paragraph.

::::

## Factorydefaults Command

### Syntax

`factorydefaults [Optional Parameters]`

### Description
Reset iLO to factory defaults in the current logged in server.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

### Login Parameters

The following parameters can be included to login to a
server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the
server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the
password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user
and URL flags to login. Use the provided iLO password corresponding
to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after
this command is completed. Using this flag when not logged in will have
no effect.

### Examples

To reset iLO to factory defaults in the current logged in server
run the command without arguments.

```shell
ilorest factorydefaults
Resetting iLO to factory default settings
Current session will be terminated.
The operation completed successfully.
```

:::warning Warning
This command will erase all iLO user setting data and reset iLO.
Default credentials are required to access iLO after a factory reset.
:::

:::success Tip
To reset ilO to factory defaults, the `factorydefaults` command performs an `HpeiLO.ResetToFactoryDefaults`
[action](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_manager_resourcedefns{{process.env.LATEST_FW_VERSION}}/#actions),
consisting of a POST request toward `/redfish/v1/Managers/1/Actions/Oem/Hpe/HpeiLO.ResetToFactoryDefaults/`
with the following body: `{"Action": "HpeiLO.ResetToFactoryDefaults", "ResetType": "Default"}`

Other HPE Actions can be listed with a GET request toward
`{{BmcURL}}/redfish/v1/Managers/{{ManagerId}}/?$select=Oem/Hpe/Actions`
:::

## Firmwareupdate Command

### Syntax

`Firmwareupdate [URI] [Optional Parameters]`

### Description

Use this command to update the firmware via URI.
iLO must be able to access the URI for update to
complete successfully. This command only supports
firmware with a `.bin` extension.

:::info NOTE

The firmware update command is only supported
in <b>iLO 4 2.20</b> or higher. And only iLO
firmware and UEFI firmware are supported.
Smart Components are not supported.
:::

### Parameters

- **URI**

Point the **firmwareupdate** command towards the firmware
package file that holds the file for the firmware update.

- **-h, --help**

Including the help flag will display help for the command.

- **--tpmenabled**

Use this flag if the server you are currently logged
into has a TPM chip installed.

### Login Parameters

The following parameters can be included to
login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided
iLO URL along with the user and password flags
to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along
with the password and URL flags to login to a server
in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user
and URL flags to login. Use the provided iLO password
corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after
this command is completed. Using this flag when not logged in
will have no effect.

### Input

URI pointing to a firmware package as shown in the first example below.

### Examples

To update firmware specify the URI location of the firmware.
iLO will then gather the file and flash it. The user will be
logged out after firmware update completes successfully.

:::info NOTE

iLO does not always reset after a firmware update.
:::

```shell
ilorest firmwareupdate https://firmwarehost/path/to/firmware/file.fwpkg

Starting upgrading process...

iLO is uploading the necessary files. Please wait...

Updating: \

Firmware update has completed and iLO may reset.
If iLO resets the session will be terminated.
Please wait for iLO to initialize completely before logging in again.
A reboot may be required for firmware changes to take effect.
Logging session out.
```

## Fwintegritycheck Command

### Syntax

`fwintegritycheck [Optional Parameters]`

### Description
Perform a firmware integrity check on the current logged in server.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--results**

Optionally include this flag to show results of firmware integrity check.

### Login Parameters

The following parameters can be included to
login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided
iLO URL along with the user and password flags to
login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with
the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user
and URL flags to login. Use the provided iLO password corresponding
to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after
this command is completed. Using this flag when not logged in will
have no effect.

### Examples

To perform a firmware integrity check run the command
without arguments.

```shell
ilorest fwintegritycheck
The operation completed successfully.
```

To perform a firmware integrity check and return results of
the check include the `--results` option.

```shell
ilorest fwintegritycheck --results
The operation completed successfully.
Awaiting results of firmware integrity check....
Scan Result: OK
```

## Iloaccounts Command

### Syntax

`iloaccounts [COMMAND] [OPTIONS]`

### Description

Adds/deletes an iLO account on the currently logged in server
and modifies iLO account privileges.

- **LOGINNAME:**  The account name, not used to login.
- **USERNAME:** The account username name, used to login.
- **PASSWORD:**  The account password, used to login.
- **Id:** The number associated with an iLO user account.
- **PRIVILEGES:**
  - 1: Login
  - 2: Remote Console
  - 3: User Config
  - 4: iLO Config
  - 5: Virtual Media
  - 6: Virtual Power and Reset

- **iLO 5 added privileges:**
  - 7: Host NIC Config
  - 8: Host Bios Config
  - 9: Host Storage Config
  - 10: System Recovery Config

- **Roles:**
  - Administrator
  - ReadOnly
  - Operator

:::info NOTE
By default, only login privilege is added to the newly created
account with role "ReadOnly" in iLO 5 and no privileges in iLO 4.
To modify these privileges, you can remove properties that would
be set by using -`-removeprivs` or you can directly set which privileges are
given using `--addprivs`.
:::

:::info NOTE

Please make sure the order of arguments is correct. The
parameters are extracted based on their position in the arguments list.
Only privileges available to the logged in account can be set to the new
account.
:::

:::info NOTES

Account credentials are case-sensitive.
 
:::

:::success TIP

When executing the command `iloaccounts add` in a
Linux machine, an escape character needs to be
added before special characters of the password.

Example: `iloaccount add rest rest 12iso\$help`

:::

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--addprivs=OPTPRIVS**

Optionally include this flag if you wish to specify
which privileges you want added to the iLO account.
Pick privileges from the privilege list
in the above help text. Example: `--addprivs=1,2,4`

- **--removeprivs=OPTPRIVS**

Optionally include this flag if you wish to specify which
privileges you want removed from the iLO account. Pick privileges
from the privilege list in the above help text. Example: `--removeprivs=1,2,4`

- **--role=ROLE**

Optionally include this flag if you would
like to specify Privileges by role. Valid choices are:
Administrator, ReadOnly, and Operator.

- **-j, --json**

Optionally include this flag if you wish to change
the displayed output to JSON format.
Preserving the JSON data structure makes
the information easier to parse.

### Login Parameters

The following parameters can be included to
login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the
server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the
password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user
and URL flags to login. Use the provided iLO password
corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this
command is completed. Using this flag when not logged in will have no effect.

### Examples

To list the current iLO accounts on the system and their information,
run the command without arguments.

```shell
ilorest iloaccounts
Discovering data...Done
iLO Account info:
[Id] UserName (LoginName):
Privileges
-----------------
[1] Administrator (Administrator):
ServiceAccount=False
HostNICConfigPriv=True
HostStorageConfigPriv=True
RemoteConsolePriv=True
iLOConfigPriv=True
VirtualMediaPriv=True
UserConfigPriv=True
HostBIOSConfigPriv=True
VirtualPowerAndResetPriv=True
LoginPriv=True
SystemRecoveryConfigPriv=True

```

To add an iLO account include the `add` argument with the new
account `USERNAME`, `LOGINNAME`, and `PASSWORD`.
To optionally specify privileges at creation, 
use the `--addprivs` option with numbers from the privilege list.

```shell
ilorest iloaccounts add USERNAME ACCOUNTNAME PASSWORD --addprivs 1,4,7
[201] The operation completed successfully.
ilorest iloaccounts
iLO Account info:
[Id] UserName (LoginName):
Privileges
-----------------
[1] Administrator (Administrator):
ServiceAccount=False
HostNICConfigPriv=True
HostStorageConfigPriv=True
RemoteConsolePriv=True
iLOConfigPriv=True
VirtualMediaPriv=True
UserConfigPriv=True
HostBIOSConfigPriv=True
VirtualPowerAndResetPriv=True
LoginPriv=True
SystemRecoveryConfigPriv=True

[3] USERNAME (ACCOUNTNAME):
ServiceAccount=False
HostNICConfigPriv=True
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=True
VirtualMediaPriv=False
UserConfigPriv=False
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False

```

To modify an iLO account's privileges include the `modify` argument,
the `Id` or the `Username` of the account to modify, and include the
`--addprivs` and/or `--removeprivs` options with numbers from the privilege
list.

```shell
ilorest iloaccounts
...
[3] USERNAME (ACCOUNTNAME):
ServiceAccount=False
HostNICConfigPriv=True
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=True
VirtualMediaPriv=False
UserConfigPriv=False
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False

ilorest iloaccounts modify USERNAME --addprivs 2,3 --removeprivs 7
The account was modified successfully.
ilorest iloaccounts
...
[3] USERNAME (ACCOUNTNAME):
ServiceAccount=False
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=True
iLOConfigPriv=True
VirtualMediaPriv=False
UserConfigPriv=True
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False
```

To change the password of an account run the command with the
`changepass` argument, specifying the `Id` or the `Username` of
the account to modify and the new password.

```shell
ilorest iloaccounts changepass 3 newpassword
The account was modified successfully.
```

To delete an iLO account run the command with the `delete`
argument, specifying the `Id` or the `Username` of the account for deletion.

```shell
ilorest iloaccounts delete USERNAME
The account was removed successfully.
```

To add a certificate to an account run the command with the `addcert`
argument, specifying the `Id` or `Username` of the account followed by
the path to an x.509 certificate.

```shell
ilorest iloaccounts addcert 3 C:\Temp\cert.txt
The account was modified successfully.
```

To delete a certificate from an account run the command with the `deletecert`
argument, specifying either the `Id` or `Username` of the account.

```shell
ilorest iloaccounts deletecert 3
The account was modified successfully.
```

To verify the certificate run a `rawget`

```shell
ilorest rawget "/redfish/v1/AccountService/UserCertificateMapping/?$expand=."
[200] The operation completed successfully.
{
  ... Truncated...
  "Members": [
  {
        "@odata.context": "/redfish/v1/$metadata#HpeiLOAccountCertificateMap.HpeiLOAccountCertificateMap",
        "@odata.id": "/redfish/v1/AccountService/UserCertificateMapping/1/",
        "@odata.type": "#HpeiLOAccountCertificateMap.v1_0_1.HpeiLOAccountCertificateMap",
        "Fingerprint": "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00",
        "FingerprintDigestAlgorithm": "SHA256",
        "Id": "1",
        "UserName": "Administrator"
  },
  {
        "@odata.context": "/redfish/v1/$metadata#HpeiLOAccountCertificateMap.HpeiLOAccountCertificateMap",
        "@odata.id": "/redfish/v1/AccountService/UserCertificateMapping/9/",
        "@odata.type": "#HpeiLOAccountCertificateMap.v1_0_1.HpeiLOAccountCertificateMap",
        "Fingerprint": "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00",
        "FingerprintDigestAlgorithm": "SHA256",
        "Id": "3",
        "UserName": "USERNAME"
  }
  ]
}
```

When applying privileges directly use the following numbers
to specify privileges.

PRIVILEGES:

1. Login
2. Remote Console
3. User Config
4. iLO Config
5. Virtual Media
6. Virtual Power and Reset

iLO 5 added privileges:

7. Host NIC Config
8. Host Bios Config
9. Host Storage Config
10. System Recovery Config

:::info NOTE

This command has been recently changed. Please review the new method to
specify privileges and querying accounts.
:::

## Ilofederation Command

### Syntax

`ilofederation [COMMAND] [ARGUMENTS] [OPTIONS]`

### Description

Adds, deletes, or modifies an iLO federation group on the currently
logged in server.

- **FEDERATIONNAME**: The name (Id) of the federation group.
- **KEY**: The key required to join the federation.
- **Id**: The number associated with an iLO federation.

- **PRIVILEGES:**
  - 1: Login
  - 2: Remote Console
  - 3: User Config
  - 4: iLO Config
  - 5: Virtual Media
  - 6: Virtual Power and Reset

- **iLO 5 added privileges:**
  * 7: Host NIC Config
  * 8: Host Bios Config
  * 9: Host Storage Config
  * 10: System Recovery Config

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--addprivs=PRIVS**

Optionally include this flag if you wish to specify which privileges
you want added to the iLO federation. This overrides the default of
duplicating privileges of the currently logged in federation on the new
federation.
Pick privileges from the privilege list in the above help text.

Example: --addprivs=1,2,4

- **--removeprivs=PRIVS**

Optionally include this flag if you wish to specify which privileges you
want removed from the iLO federation. This overrides the default of
duplicating privileges of the currently logged in federation on
the new federation. Pick privileges from the privilege list in the
above help text.

Example: `--removeprivs=1,2,4`

### Login Parameters

The following parameters can be included to login to a server in
the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to
the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the
password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with
the user and URL flags to login. Use the provided iLO
password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server
after this command is completed. Using this flag when not
logged in will have no effect.

### Examples

:::info NOTE

The federation key must be 8 characters or greater.
:::

To add an iLO federation group to the current logged in server
include the `add` argument with the new federation name and
federation key. To optionally specify privileges at creation,
use the `--addprivs` option with numbers from the privilege list.

```shell
ilorest ilofederation
iLO Federation Id list with Privileges:

Name=DEFAULT:
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=False
VirtualMediaPriv=False
UserConfigPriv=False
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False
ilorest ilofederation add newfedname 8charfedkey --addprivs 1,3,5
The resource has been created successfully.
ilorest ilofederation
iLO Federation Id list with Privileges:

Name=DEFAULT:
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=False
VirtualMediaPriv=False
UserConfigPriv=False
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False

Name=newfedname:
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=False
VirtualMediaPriv=True
UserConfigPriv=True
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False
```

To list the current iLO federations and their information run
the command with no arguments.

```shell

ilorest ilofederation
iLO Federation Id list with Privileges:

Name=DEFAULT:
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=False
VirtualMediaPriv=False
UserConfigPriv=False
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False
```

To change the key of an iLO federation group
include the `changekey` argument with the federation
name and the new key.

```shell
ilorest ilofederation changekey newfedname newfedkey
The operation completed successfully.
```

To delete an iLO federation group include the `delete`
argument with the federation name to delete.

```shell
ilorest ilofederation
iLO Federation Id list with Privileges:

Name=DEFAULT:
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=False
VirtualMediaPriv=False
UserConfigPriv=False
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False

Name=newfedname:
HostNICConfigPriv=True
HostStorageConfigPriv=True
RemoteConsolePriv=True
iLOConfigPriv=True
VirtualMediaPriv=True
UserConfigPriv=True
HostBIOSConfigPriv=True
VirtualPowerAndResetPriv=True
LoginPriv=True
SystemRecoveryConfigPriv=True
ilorest ilofederation delete newfedname
The operation completed successfully.
ilorest ilofederation
iLO Federation Id list with Privileges:

Name=DEFAULT:
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=False
VirtualMediaPriv=False
UserConfigPriv=False
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False
```

To modify an iLO federation group include the `modify`
argument with the federation name you'd like to update.

```shell
ilorest ilofederation modify newfederation 8charfedkey --addprivs 1,2,3,4
The resource has been created successfully.
ilorest ilofederation
iLO Federation Id list with Privileges:

Name=DEFAULT:
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=False
VirtualMediaPriv=False
UserConfigPriv=False
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False

Name=newfederation
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=True
iLOConfigPriv=True
VirtualMediaPriv=False
UserConfigPriv=True
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False
ilorest ilofederation modify newfederation --removeprivs 1,2,3
The operation completed successfully
ilorest ilofederation
Name=DEFAULT:
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=False
VirtualMediaPriv=False
UserConfigPriv=False
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False

Name=newfederation
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=True
VirtualMediaPriv=False
UserConfigPriv=False
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=False
SystemRecoveryConfigPriv=False
```

When applying privileges directly use the following numbers
to specify privileges.

PRIVILEGES:

1. Login
2. Remote Console
3. User Config
4. iLO Config
5. Virtual Media
6. Virtual Power and Reset

iLO 5 added privileges:

7. Host NIC Config
8. Host Bios Config
9. Host Storage Config
10. System Recovery Config

:::info NOTE

Please make sure the order of arguments is correct.
The parameters are extracted based on their position in the arguments list.
:::

## Ilolicense Command

### Syntax

`ilolicense [COMMAND] [LICENSE_KEY] [OPTIONS]`

### Description

Manages iLO licenses on the currently logged in server.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--install**

Installs the provided iLO license.

- **--uninstall**

Removes or uninstall the iLO license.

- **--check**

Checks and matches the installed license with the provided license.

- **--check_confirm**

Checks the status of installed iLO license.

### Login Parameters

The following parameters can be included to login to a server
in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along
with the user and password flags to login to the server in the
same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the
password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user
and URL flags to login. Use the provided iLO password
corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server
after this command is completed. Using this flag when not
logged in will have no effect.

### Examples

The following example illustrate the different options of
the `ilolicese` macro command.

Refer to the
[iLO License service](/docs/redfishservices/ilos/supplementdocuments/licenseservice/)
section for other examples.

```shell License details
ilorest ilolicense
Id:1
Code:
Message:
Service:www.hpe.com/glis
Status:False
License:iLO Advanced
LicenseKey:XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
Quantity:1
State:unconfirmed
Signer:iLO
ChipId:XXXXXXXXXXXXXXXX
Product:ProLiant DL325 Gen11
SerialNumber:XXXXXXXXXX
Description:iLO License View
License:iLO Advanced
LicenseClass:FQL
LicenseErr:
LicenseExpire:
AutoCertEnroll:True
DirectoryAuth:True
DowngradePolicy:True
EmailAlert:True
FWScan:True
Federation:True
Jitter:True
KD:True
KeyMgr:True
MURC:True
ODIM:False
PowerReg:True
RC:True
Recovery:True
RemoteSyslog:True
Scrncap:True
SecureErase:True
SmartCard:True
SuiteB:True
TextCons:True
VM:True
VMScript:True
VSPLogging:True
LicenseInstallDate:19 Oct 2022
LicenseKey:XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
LicenseSeats:1
LicenseTier:ADV
LicenseType:Perpetual
Name:iLO License
```

```shell Install license key
ilorest ilolicense --install XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
The resource has been created successfully.
```

```shell Check license key
ilorest ilolicense --check XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
Matched. Provided key is installed on this server
```

```shell Uninstall license key
ilorest ilolicense --uninstall
Uninstalled license successfully
```

```shell Check License state
ilorest ilolicense --check_confirm
"State: unconfirmed"
```

## Iloreset Command

### Syntax

`iloreset [Optional Parameters]`

### Description

Run this command to reset iLO on the currently logged in server.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

### Login Parameters

The following parameters can be included to login to a server
in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the
server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the
password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the
user and URL flags to login. Use the provided iLO password
corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after
this command is completed. Using this flag when not logged in
will have no effect.

### Examples

To reset iLO run the command without arguments.

```shell
ilorest iloreset

After iLO resets the session will be terminated.
Please wait for iLO to initialize completely before logging in again.
This process may take up to 3 minutes.

A management processor reset is in progress.
```

:::warning Warning
Resetting iLO will render it unresponseive as it resets.
The user will be logged out.
:::

## Ipprofiles Command

### Syntax

`ipprofiles [Optional Parameters]`

### Description

Run this command to manage the hpeipprofile data store.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **-f FILENAME, --filename=FILENAME**

Write results to the specified file.

- **-d DEL_KEY, --delete=DEL_KEY**

Look for the key or keys in the ipprofile manager and delete.

- **-s START_IP, --start=START_IP**

Copies the specified IP profile into the job queue and starts it.

### Login Parameters

The following parameters can be included to login to a server
in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the server in
the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with
the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and
URL flags to login. Use the provided iLO password corresponding
to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server
after this command is completed. Using this flag when not
logged in will have no effect.

### Examples

To list the current profiles on the server, run the command without arguments.

```shell
ilorest ipprofiles
{
  "@odata.type": "#HpeIpProfiles.v1_0_0.HpeIpProfiles",
  "1540504034216": "{profile: data}"
}
```

To upload an ipprofile, input a valid JSON file path as an argument.

```shell
ilorest ipprofiles profile.json
The operation completed successfully.
```

To remove a profile, use the unique key contained in
the profile with the `(-d, --delete)` option.

```shell
ilorest ipprofiles -d 1540504034216
The operation completed successfully.
ilorest ipprofiles
{
  "@odata.type": "#HpeIpProfiles.v1_0_0.HpeIpProfiles",
  "1549567973200": "{\"profile\": {}}"
}
ilorest ipprofiles -d 1549567973200
The operation completed successfully.
ilorest ipprofiles
{
  "@odata.type": "#HpeIpProfiles.v1_0_0.HpeIpProfiles"
}
```

## Onebuttonerase Command

### Syntax

`onebuttonerase [OPTIONS]`

### Description

Performs One Button Erase on a system. Erases all iLO settings,
Bios settings, User Data, and iLO Repository data.

:::warning Warning
This command will erase user data.
Use this command with extreme caution.
Complete erase can take up to 24 hours to complete.
:::

### Paramters

- **-h, --help**

Including the help flag will display help for the command.

- **--nomonitor**

Use this command to skip monitoring of the one button erase process and simply trigger the operation.

- **--confirm**

Use this command to skip the confirmation prompt before starting One Button Erase and begin the operation.

### Login Parameters

The following parameters can be included to login
to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided
iLO URL along with the user and password flags
to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag
along with the password and URL flags to login to a
server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with
the user and URL flags to login. Use the provided
iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the
server after this command is completed.
Using this flag when not logged in will have no effect.

### Examples

To initiate One Button Erase and erase all iLO settings,
BIOS settings, User Data, and iLO Repository data run the
command without arguments.

```shell
ilorest onebuttonerase
Please type "erase" to begin erase process. Any other input will cancel the operation. If you wish to skip this prompt add the --confirm flag: erase
One or more properties were changed and will not take effect until system is reset.
The operation completed successfully.
        One Button Erase Status
==========================================================
Elapsed time in Minutes: 0
Elapsed Remaining Time in Minutes: 0
Bios Settings Erase: Idle
iLO Settings Erase: Idle
User Data Erase: Initiated /
```

To optionally skip the confirmation before initiating
One Button Erase include the `--confirm` option.

```shell
ilorest onebuttonerase --confirm
One or more properties were changed and will not take effect until system is reset.
The operation completed successfully.
        One Button Erase Status
==========================================================
Elapsed time in Minutes: 0
Elapsed Remaining Time in Minutes: 0
Bios Settings Erase: Idle
iLO Settings Erase: Idle
User Data Erase: Initiated \
```

## Pending command

### Syntax

`pending [Optional Parameters]`

### Description

Displays pending committed changes present in the
[settings](/docs/concepts/biosdatamodel/#bios-current-and-pending-areas)area,
that will be applied after a reboot. Affected data types are:

- `Bios.`
- `HpeServerBootSettings.`
- `HpeiSCSISoftwareInitiator.`
- `HpeKmsConfig.`
- `HpeServerConfigLock.`
- `HpeTlsConfig.`
- `SmartStorageConfig.` (iLO 5 only)

:::info NOTE
The above list may change over time.
:::

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

### Login Parameters

The following parameters can be included to login to a
server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the
server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, including this flag along
with the password and URL flags can be used to login to
a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the
user and URL flags to login. Use the provided iLO password
corresponding to the username you gave to login.

- **--https**

Use the provided CA bundle or SSL certificate with your login to connect
securely to the system in remote mode. This flag has no effect in local mode.

### Examples

Run `pending` to show current changes
that have been committed and are awaiting
a reboot. In the following example, only the `AdminName` Bios
attribute has been modified and committed.

```shell
ilorest --nologo  pending
Current Pending Changes:

HpeServerBootSettings.v2_0_0:
Id=
    Current=boot
    Pending=settings
Name=
      Current=Boot Order Current Settings
      Pending=Boot Order Pending Settings
HpeiSCSISoftwareInitiator.v2_0_0:
Id=
    Current=iscsi
    Pending=settings
Name=
      Current=iSCSI Software Initiator Current Settings
      Pending=iSCSI Software Initiator Pending Settings
HpeKmsConfig.v1_0_0:
Id=
    Current=kmsconfig
    Pending=settings
Name=
      Current=KMS Current Settings
      Pending=KMS Pending Settings
HpeServerConfigLock.v1_0_0:
Id=
    Current=serverconfiglock
    Pending=settings
Name=
      Current=Server Configuration Lock Current Settings
      Pending=Server Configuration Lock Pending Settings
HpeTlsConfig.v1_0_0:
Id=
    Current=tlsconfig
    Pending=settings
Name=
      Current=TLS Current Settings
      Pending=TLS Pending Settings
Bios.v1_0_4:
Attributes=
            AdminName=
                       Current=John Deuf
                       Pending=newname
Id=
    Current=bios
    Pending=settings
Name=
      Current=BIOS Current Settings
      Pending=BIOS Pending Settings
```

## Reboot Command

### Syntax

`reboot [Reboot Type] [Optional Parameters]`

### Description

Run this command to turn the system on,
perform an immediate non-graceful shutdown
followed by a restart of the system,
generate a non-maskable interrupt and cause
an immediate system halt, or simulate the
pressing of the physical power button on the system.

### Parameters

- **On**

Use this reboot type to turn the system on.
If the system is already on, this has no effect.

- **ForceOff**

Use this reboot type to cause the system to
perform an immediate non-graceful shutdown.

- **ForceRestart**

Use this reboot type to perform an
immediate non-graceful shutdown followed by a restart of the system.

- **Nmi**

Use this reboot type to generate a non-maskable interrupt
to cause an immediate system halt.

- **PushPowerButton**

Use this reboot type to simulate the pressing of the
physical power button on this system.

- **Press**

Simulates the pressing of the physical
power button on this system.

- **PressAndHold**

Simulates pressing and holding of
the power button on this systems.

- **ColdBoot**

Immediately removes power from the server,
followed by a restart of the system.

- **-h, --help**

Including the help flag will display help for the command.

- **--confirm**

Optionally include to request user confirmation for reboot.

### Login Parameters

The following parameters can be included to login
to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided
iLO URL along with the user and password flags
to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along
with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the
user and URL flags to login. Use the provided iLO password
corresponding to the username you gave to login.

- **--includelogs**

You can optionally choose to set the **includelogs** flag.
Doing so will include logs in the data retrieval process.

:::info NOTE
This option can be used to limit long login times.
:::

- **--logout**

Optionally include the logout flag to log out of
the server after this command is completed.
Using this flag when not logged in will have no effect.

### Examples

If no arguments are supplied the default operation is `ForceRestart`.

```shell
ilorest reboot

After the server is rebooted the session will be terminated.
Please wait for the server to boot completely to login again.
Rebooting server in 3 seconds...
The operation completed successfully.
Logging session out.
```

To perform a power function supply one of the reboot type parameters
as an argument.

```shell
ilorest reboot ForceOff

Server is powering off the session will be terminated.
Please wait for the server to boot completely to login again.
Powering off the server in 3 seconds...
The operation completed successfully.
Logging session out.
```

If the current power state does not allow for an operation
to complete an error will be returned.

```shell
ilorest reboot On

Session will now be terminated.
Please wait for the server to boot completely to login again.
Turning on the server in 3 seconds...
iLO response with code [400]: The operation was not successful due to the current power state (for example, attempting to turn the power off when it is already off).
```

:::info NOTE

- The reboot command will log out, the user, from the server.
- Wait for the system to fully reboot before attempting to login,
  or data such as Bios may be unavailable.
- Arguments are not case-sensitive.

:::

## Results Command

### Syntax

`results [Optional Parameters]`

### Description

Use this command to retrieve a Redfish response messages.
The results command provides feedback after an iLO state change as a
list of attributes that have been modified and a short message log
that contains details regarding the state change.
The results captured are limited to Redfish response messages
for these groups: `Bios.`, `HpeServerBootSettings.`, `HpeiSCSISoftwareInitiator.`,
`HpeKmsConfig.`, `HpeServerConfigLock.`, `HpeTlsConfig.`, `SmartStorageConfig.` (iLO 5 only).

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

### Login Parameters

The following parameters can be included to login to a
server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the
server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along
with the password and URL flags to login to a
server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with
the user and URL flags to login. Use the provided
iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server
after this command is completed. Using this flag when
not logged in will have no effect.

## Sendtest Command

### Syntax

`sendtest [Test Type] [Optional Parameters]`

### Description

Command for triggering various tests to iLO.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

### Login Parameters

The following parameters can be included to login to a server in
the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the
server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along
with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the
user and URL flags to login. Use the provided iLO password
corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server
after this command is completed. Using this flag when not
logged in will have no effect.

### Examples

Send syslog test to the current logged in server.

```shell
ilorest sendtest syslog
The operation completed successfully.
```

Send alert mail test to the current logged in server.

```shell
ilorest sendtest alertmail
The operation completed successfully.
```

Send SNMP test alert to the current logged in server.

```shell
ilorest sendtest snmpalert
The operation completed successfully.
```

## Serverclone Command

### Syntax

`serverclone [save/load] [OPTIONS]`

### Description

Saves or load a JSON formatted file
of a system's iLO and Bios configurations.
It is possible to save [RDE capable](/docs/etc/glossaryterms/) storage device configurations
and load Single Sign-On and TLS certificates, with specific options.

:::info NOTES

- A saved JSON file might require some editing before being loaded into another system.
- Read-only properties are automatically discarded during a load operation.
- Default values are set for the iLO Management Account
  password and Federation Group key when the `auto` (automated mode) is used.
- When loading a clone file, use a fully privileged iLO account (such as the Administrator account)
  to ensure all system parameters are loaded successfully.
- When working with iLO Management Accounts or iLO Federation Groups,
  remove entries from the JSON clone file (within the relevant dictionary)
  in order to perform deletion. In order to create new accounts on the server,
  simply add relevant nested dictionaries to the JSON file.
- The Administrator account cannot be deleted using `serverclone`.
- If settings for a particular type should not be changed,
  it is suggested to completely omit this dictionary from the JSON clone file.
- When adding or modifying the user in local mode, recovery
  privileges might not get updated in production mode.
  This is because in-band production mode does not have privilege to add it.

:::

### Parameters

- **save**

Used to save a clone file. Default output file is in current directory with name `ilorest_clone.json`.
Refer to the `--clonefile, -f` argument to save into another file.

:::info NOTE

`serverclone save` command **does not** save ethernet interfaces
(manager or system) configuration. Use
the `save` [iLO global command](/docs/redfishclients/ilorest-userguide/globalcommands/#save-command)
or the `rawget` [command](/docs/redfishclients/ilorest-userguide/rawcommands/#examples-1)
to save network related configuration.

:::

- **load**

Used to load a clone file.

:::info NOTE

In order to avoid unwanted communication interruptions with the iLO,
the `serverclone load` command ignores modifications performed to the
Manager Dedicated and Shared Network port URIs
(`/redfish/v1/Managers/1/EthernetInterfaces/[1,2]`).
Use the `ethernet --network_ipv4` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#ethernet-command)
or the `rawpatch` [command](/docs/redfishclients/ilorest-userguide/rawcommands/#examples-3)
to modify the settings of these ports.
:::

- **-h, --help**

Including the help flag will display help for the command.

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password.
Include this flag if second-level BIOS authentication
is needed for the command to execute.

:::info NOTE

This option is only used on Gen 9 systems.
:::

- **--encryption=ENCRYPTION**

Use this command optionally to encrypt/decrypt a
file using the key provided.

- **--ssocert=SSOCERT.txt**

Use this command during `load` to include an SSO certificate.
This should be properly formatted in a simple text file.

- **--tlscert=TLSCERT.txt**

Use this command during `load` to include a TLS certificate.
This should be properly formatted in a simple text file.

- **-f CLONEFILENAME, --clonefile=CLONEFILENAME**

This is an optional command used to rename the default clone
file `ilorest_clone.json` into `CLONEFILENAME`.

- **-sf CLONEFILENAME, --storageclonefile=CLONEFILENAME**

This is an optional command used to rename the default
storage clone file `ilorest_storage_clone.json` into `CLONEFILENAME`.

- **--errarch=ARCHIVE, --archive=ARCHIVE**

Allow for save to automatically archive the clone file and error log file.
Use with load will archive the clone file, temporary patch file, error log file and changelog file.

- **--uniqueoverride**

Use this command to override the measures stopping the tool
from writing over items that are system unique.

- **--auto**

This optional command provides preset credentials.
The preset value of **<p/k>** is used as the password for
the iLO account manager accounts and the iLO federation group keys.
Warning and confirmation messages are suppressed including those
used to alert the user of mismatches and system reboots/iLO resets.

- **--ilossa**

This is an optional command used to save configuration of
[RDE capable](/docs/etc/glossaryterms/)
storage device configurations during save or load processes.
Use the `-sf CLONEFILENAME, --storageclonefile=CLONEFILENAME` option
to modify the default `ilorest_storage_clone.json` filename.

- **--nobios**

This is an optional command used to exclude Bios configuration
during save or load processes.

- **all**

Save and load iLO, Bios and [RDE capable](/docs/etc/glossaryterms/)
storage device configurations.

### Login Parameters

The following parameters can be included to login to a
server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided
iLO URL along with the user and password flags
to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with
the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with
the user and URL flags to login. Use the provided
iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server
after this command is completed. Using this flag when not
logged in will have no effect.

### Examples

To save an iLO and Bios config run the command with the `save` argument.
You can specify a filename using the (`-f, --filename`) option,
if this option is not used the command will use `ilorest_clone.json`.

```shell
ilorest serverclone save
Saving properties of type: AccountService, path: /redfish/v1/AccountService/
Saving properties of type: Bios, path: /redfish/v1/systems/1/bios/settings/
Saving properties of type: ComputerSystem, path: /redfish/v1/Systems/1/
Saving properties of type: EthernetInterface, path: /redfish/v1/Managers/1/EthernetInterfaces/1/
Saving properties of type: EthernetInterface, path: /redfish/v1/Managers/1/EthernetInterfaces/2/
Saving properties of type: HpeESKM, path: /redfish/v1/Managers/1/SecurityService/ESKM/
Saving properties of type: HpeServerBootSettings, path: /redfish/v1/systems/1/bios/boot/settings/
Saving properties of type: HpeiLODateTime, path: /redfish/v1/Managers/1/DateTime/
Please input the federation key for Federation user: DEFAULT
Password: password
Please re-enter the federation key for Federation user: DEFAULT
Password: password
Saving properties of type: HpeiLOFederationGroup, path: /redfish/v1/Managers/1/FederationGroups/DEFAULT/
License Key Found ending in XXXXX:
Remember to edit your License Key...
Saving properties of type: HpeiLOLicense, path: /redfish/v1/Managers/1/LicenseService/1/
Saving properties of type: HpeiLOSSO, path: /redfish/v1/Managers/1/SecurityService/SSO/
Saving properties of type: HpeiLOSnmpService, path: /redfish/v1/Managers/1/SnmpService/
Saving properties of type: Manager, path: /redfish/v1/Managers/1/
Password: Please input the desired password for user: Administrator
password
Please re-enter the desired password for user: Administrator
Password: password
Saving properties of type: ManagerAccount, path: /redfish/v1/AccountService/Accounts/7/
Please input the desired password for user: tiQiR2
Password:
Using a placeholder password of '&lt;pass&gt;' in ilorest_clone.json file.
Saving properties of type: ManagerAccount, path: /redfish/v1/AccountService/Accounts/8/
Saving properties of type: ManagerNetworkProtocol, path: /redfish/v1/Managers/1/NetworkProtocol/
Saving properties of type: SecureBoot, path: /redfish/v1/Systems/1/SecureBoot/
Saving properties of type: SmartStorageConfig, path: /redfish/v1/systems/1/smartstorageconfig/settings/
Saving of clonefile to 'ilorest_clone.json' is complete.
```

To save an iLO and Bios config while providing a placeholder
value for all user inputs run the command with the `save` argument
and include the (`--auto`) option. This option can be used to
programmatically create a file without user input and then
use a script to fill in the settings.

```shell
ilorest serverclone save --auto
Saving properties of type: AccountService, path: /redfish/v1/AccountService/
Saving properties of type: Bios, path: /redfish/v1/systems/1/bios/settings/
Saving properties of type: ComputerSystem, path: /redfish/v1/Systems/1/
Saving properties of type: EthernetInterface, path: /redfish/v1/Managers/1/EthernetInterfaces/1/
Saving properties of type: EthernetInterface, path: /redfish/v1/Managers/1/EthernetInterfaces/2/
Saving properties of type: HpeESKM, path: /redfish/v1/Managers/1/SecurityService/ESKM/
Saving properties of type: HpeSNMPAlertDestination, path: /redfish/v1/Managers/1/SnmpService/SNMPAlertDestinations/1/
Saving properties of type: HpeServerBootSettings, path: /redfish/v1/systems/1/bios/boot/settings/
Saving properties of type: HpeiLODateTime, path: /redfish/v1/Managers/1/DateTime/
Remember to edit the Federation key for acct: 'DEFAULT'.
Saving properties of type: HpeiLOFederationGroup, path: /redfish/v1/Managers/1/FederationGroups/DEFAULT/
Remember to edit the Federation key for acct: 'fed1'.
Saving properties of type: HpeiLOFederationGroup, path: /redfish/v1/Managers/1/FederationGroups/f250jenkins/
Remember to edit the Federation key for acct: '9P0Rn2'.
Saving properties of type: HpeiLOFederationGroup, path: /redfish/v1/Managers/1/FederationGroups/9P0Rn2/
License Key Found ending in: XXXXX
Remember to verify your License Key...
Saving properties of type: HpeiLOLicense, path: /redfish/v1/Managers/1/LicenseService/1/
Saving properties of type: HpeiLOSSO, path: /redfish/v1/Managers/1/SecurityService/SSO/
Saving properties of type: HpeiLOSnmpService, path: /redfish/v1/Managers/1/SnmpService/
Saving properties of type: Manager, path: /redfish/v1/Managers/1/
Remember to edit password for user: 'Administrator', login name: 'Administrator'.
Saving properties of type: ManagerAccount, path: /redfish/v1/AccountService/Accounts/1/
Remember to edit password for user: 'username', login name: 'username'.
Saving properties of type: ManagerAccount, path: /redfish/v1/AccountService/Accounts/2/
Remember to edit password for user: 'admin', login name: 'admin'.
Saving properties of type: ManagerAccount, path: /redfish/v1/AccountService/Accounts/120/
Saving properties of type: ManagerNetworkProtocol, path: /redfish/v1/Managers/1/NetworkProtocol/
Saving properties of type: SecureBoot, path: /redfish/v1/Systems/1/SecureBoot/
Saving properties of type: SmartStorageConfig, path: /redfish/v1/systems/1/smartstorageconfig/settings/
Saving of clonefile to 'ilorest_clone.json' is complete.
```

By default, `--ilossa` information is stored in default
file `ilorest_storage_clone.json`.
To store it in a custom file, use `-sf` instead of `-f`.

```shell
ilorest serverclone save --nobios --ilossa --auto
Saving of storage clone file to 'ilorest_storage_clone.json'......
Saving properties of type /redfish/v1/Systems/1/Storage/DE009000/
Selected option(s): #VolumeCollection.VolumeCollection
Selected option(s): #StorageControllerCollection.StorageControllerCollection
Saving properties of type /redfish/v1/Systems/1/Storage/DE009000/Controllers/0
Saving of storage clone file to 'ilorest_storage_clone.json' is complete.
```

To load a clone file run the command with the `load` argument.
You can specify a filename using the (`-f, --filename`) option,
if this option is not used the command will search for `ilorest_clone.json`.

```shell
ilorest serverclone load -f ilorest_clone.json
A configuration file 'ilorest_clone.json' containing configuration changes will be applied to this iLO server resulting in system setting changes for BIOS, ethernet controllers, disk controllers, deletion and rearrangement of logical disks...etc. Please confirm you acknowledge and would like to perform this operation now? (y/n)

Proceeding with ServerClone Load Operation...
This system has BIOS Version U32.
BIOS Versions are different. Suggest to have 'U30' in place before upgrading.
This system has has iLO 5 with firmware revision 1.40.
iLO Versions are compatible.
iLO Firmware Revisions are compatible.
Would you like to continue with migration of iLO configuration from 'ProLiant DL380 Gen10' to 'ProLiant DL360 Gen10'? (y/n)

Attempting Clone from a 'ProLiant DL380 Gen10' to a 'ProLiant DL360 Gen10'.
The contents of type: '#HpeServerBootSettings.v2_0_0.HpeServerBootSettings' should be compatible with '#HpeServerBootSettings.v2_0_0.HpeServerBootSettings', on this system.
The contents of type: '#SecureBoot.v1_0_0.SecureBoot' should be compatible with '#SecureBoot.v1_0_0.SecureBoot', on this system.
The contents of type: '#Manager.v1_3_3.Manager' should be compatible with '#Manager.v1_3_3.Manager', on this system.
The contents of type: '#Bios.v1_0_0.Bios' should be compatible with '#Bios.v1_0_0.Bios', on this system.
The contents of type: '#HpeiLOSSO.v2_0_0.HpeiLOSSO' should be compatible with '#HpeiLOSSO.v2_0_0.HpeiLOSSO', on this system.
The contents of type: '#HpeiLOSnmpService.v2_2_0.HpeiLOSnmpService' should be compatible with '#HpeiLOSnmpService.v2_2_0.HpeiLOSnmpService', on this system.
The contents of type: '#HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup' should be compatible with '#HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup', on this system.
Adding 'DEFAULT' to iLO Federation.
This account already exists on this system: 'DEFAULT'
Changing Federation account: 'DEFAULT's' key. Privileges will not be altered.
The operation completed successfully.
The contents of type: '#HpeiLODateTime.v2_0_0.HpeiLODateTime' should be compatible with '#HpeiLODateTime.v2_0_0.HpeiLODateTime', on this system.
The contents of type: '#ManagerAccount.v1_1_3.ManagerAccount' should be compatible with '#ManagerAccount.v1_1_3.ManagerAccount', on this system.
Adding user 'Ldpksh' to iLO Accounts.
The account name 'Ldpksh' already exists on this system.
Checking for and implementing account modification.
Changing account password for 'Ldpksh'.
The account was modified successfully.
Changing privileges for 'Ldpksh'.
The account was modified successfully.
The contents of type: '#ManagerAccount.v1_1_3.ManagerAccount' should be compatible with '#ManagerAccount.v1_1_3.ManagerAccount', on this system.
Adding user 'Administrator' to iLO Accounts.
An error occurred: Privilege SystemRecoveryConfigPriv is not available on this iLO version.. Check the ServerClone Error logfile for further info: clone_error_logfile.log
Logging error to 'clone_error_logfile.log'.
The contents of type: '#AccountService.v1_3_0.AccountService' should be compatible with '#AccountService.v1_3_0.AccountService', on this system.
The contents of type: '#ManagerNetworkProtocol.v1_0_0.ManagerNetworkProtocol' should be compatible with '#ManagerNetworkProtocol.v1_0_0.ManagerNetworkProtocol', on this system.
The contents of type: '#EthernetInterface.v1_4_1.EthernetInterface' should be compatible with '#EthernetInterface.v1_4_1.EthernetInterface', on this system.
iLO response with code [400]: The value for the property is the correct type, but this value is incompatible with the current value of another property.
This machine may not have a reconfigurable MACAddress...Retrying without patching MACAddress.
The operation has been completed successfully.
The contents of type: '#EthernetInterface.v1_4_1.EthernetInterface' should be compatible with '#EthernetInterface.v1_4_1.EthernetInterface', on this system.
The operation completed successfully.
NIC Interface Disabled.
The contents of type: '#ComputerSystem.v1_4_0.ComputerSystem' should be compatible with '#ComputerSystem.v1_4_0.ComputerSystem', on this system.
The contents of type: '#SmartStorageConfig.v2_0_0.SmartStorageConfig' should be compatible with '#SmartStorageConfig.v2_0_0.SmartStorageConfig', on this system.
The contents of type: '#HpeiLOLicense.v2_1_1.HpeiLOLicense' should be compatible with '#HpeiLOLicense.v2_1_1.HpeiLOLicense', on this system.
Attempting to load a license key to the server.
The resource has been created successfully.
The type: '#HpeESKM.v2_0_0.HpeESKM' was not found on this system. Associated properties can not be applied...Skipping
Loading configuration...
Committing changes...
The property you are trying to change has been updated. Please check entry again before manipulating it.
The system is ready to be reset. Perform a reset now? (y/n)

Resetting iLO...

After iLO resets the session will be terminated.
Please wait for iLO to initialize completely before logging in again.
This process may take up to 3 minutes.

A management processor reset is in progress.
Sleeping 120 seconds for iLO reset...
Logging session out.
Discovering data...Done
Resetting System...
System already Powered Off: PowerOff
Loading of clonefile 'ilorest_clone.json' to server is complete. Review the changelog file 'changelog.log'.
```

To load a clone file with SSO and/or TLS certificates run the
command with the `load` argument and include
the `--tlscert` and/or `--ssocert` arguments followed by certificate files.

```shell
ilorest login
Discovering data...Done
ilorest serverclone load  --auto --tlscert sso_certificate.txt --ssocert certificate.txt
This system has BIOS Version U32.
BIOS Versions are different. Suggest to have 'U30' in place before upgrading.
This system has has iLO 5 with firmware revision 1.40.
iLO Versions are compatible.
iLO Firmware Revisions are compatible.
Attempting Clone from a 'ProLiant DL380 Gen10' to a 'ProLiant DL360 Gen10'.
Uploading SSO Certificate...
The operation completed successfully.
Uploading TLS Certificate...
The operation completed successfully.
The contents of type: '#HpeServerBootSettings.v2_0_0.HpeServerBootSettings' should be compatible with '#HpeServerBootSettings.v2_0_0.HpeServerBootSettings', on this system.
The contents of type: '#SecureBoot.v1_0_0.SecureBoot' should be compatible with '#SecureBoot.v1_0_0.SecureBoot', on this system.
The contents of type: '#Manager.v1_3_3.Manager' should be compatible with '#Manager.v1_3_3.Manager', on this system.
The contents of type: '#Bios.v1_0_0.Bios' should be compatible with '#Bios.v1_0_0.Bios', on this system.
The contents of type: '#HpeiLOSSO.v2_0_0.HpeiLOSSO' should be compatible with '#HpeiLOSSO.v2_0_0.HpeiLOSSO', on this system.
The contents of type: '#HpeiLOSnmpService.v2_2_0.HpeiLOSnmpService' should be compatible with '#HpeiLOSnmpService.v2_2_0.HpeiLOSnmpService', on this system.
The contents of type: '#HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup' should be compatible with '#HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup', on this system.
...
```

An example of simultaneously deleting one account and
adding another within a JSON file. For new accounts,
the path is simply a placeholder, iLO will determine the URI to be used.

Clone file snippet to be modified; the element to be
removed is <font color="#01a982">highlighted</font>.

```shell
{
  ...
  "#ManagerAccount.v1_1_3.ManagerAccount": {
    "/redfish/v1/AccountService/Accounts/1/": {
      "Privileges": {
        "HostNICConfigPriv": true,
        "HostStorageConfigPriv": true,
        "RemoteConsolePriv": true,
        "iLOConfigPriv": true,
        "VirtualMediaPriv": true,
        "UserConfigPriv": true,
        "HostBIOSConfigPriv": true,
        "VirtualPowerAndResetPriv": true,
        "LoginPriv": true,
        "SystemRecoveryConfigPriv": true
      },
      "Password": "password",
      "User_Name": "Administrator",
      "Login_Name": "Administrator",
      "AccountType": "User Account"
    },
	
    "/redfish/v1/AccountService/Accounts/16/": {
      "Privileges": {
        "HostNICConfigPriv": true,
        "HostStorageConfigPriv": true,
        "RemoteConsolePriv": true,
        "iLOConfigPriv": true,
        "VirtualMediaPriv": true,
        "UserConfigPriv": true,
        "HostBIOSConfigPriv": true,
        "VirtualPowerAndResetPriv": true,
        "LoginPriv": true,
        "SystemRecoveryConfigPriv": false
      },
      "Password": "strongestavenger",
      "User_Name": "thor",
      "Login_Name": "Thor",
      "AccountType": "User Account"
    }
	
  }
  ...
}
```

New version of clone file. The new element added
is <font color="#01a982">highlighted</font>.

```shell
{
  ...
  "#ManagerAccount.v1_1_3.ManagerAccount": {
    "/redfish/v1/AccountService/Accounts/1/": {
      "Privileges": {
        "HostNICConfigPriv": true,
        "HostStorageConfigPriv": true,
        "RemoteConsolePriv": true,
        "iLOConfigPriv": true,
        "VirtualMediaPriv": true,
        "UserConfigPriv": true,
        "HostBIOSConfigPriv": true,
        "VirtualPowerAndResetPriv": true,
        "LoginPriv": true,
        "SystemRecoveryConfigPriv": true
      },
      "Password": "password",
      "User_Name": "Administrator",
      "Login_Name": "Administrator",
      "AccountType": "User Account"
    }
	
    "/redfish/v1/AccountService/Accounts/4/": {
      "Privileges": {
        "HostNICConfigPriv": true,
        "HostStorageConfigPriv": true,
        "RemoteConsolePriv": true,
        "iLOConfigPriv": true,
        "VirtualMediaPriv": true,
        "UserConfigPriv": true,
        "HostBIOSConfigPriv": true,
        "VirtualPowerAndResetPriv": true,
        "LoginPriv": true,
        "SystemRecoveryConfigPriv": false
      },
      "Password": "godofmischief",
      "User_Name": "loki",
      "Login_Name": "Loki",
      "AccountType": "User Account"
    }
	
  }
  ...
}
```

## Serverinfo Command

### Syntax

`serverinfo [Optional Parameters]`

### Description

Command for viewing server information like firmware,
software and other useful info.

### Parameters

- **--firmware**

Use this to view firmware versions.

- **--software**

Use this view software/driver versions.

- **--proxy**

Use this to view proxy server settings.

- **--thermals**

Use this to view thermal settings.

- **--fans**

Use this to view Fan settings.

- **--memory**

Use this to view Memory or RAM settings.

- **--processors**

Use this to view Processor settings.

- **--power**

Use this to view Power settings.

- **--system**

Use this to view System settings.

- **--all**

Use this to view all the server settings (everything from above)

- **-h, --help**

Including the help flag will display help for the command.

- **-f FILENAME, --filename=FILENAME**

Use this flag if you wish to use a different filename than the default one.
The default filename is ilorest.json.

- **--filter=FILTER**

Optionally set a filter value and a filter attribute to filter logs.

- **-j, --json**

Optionally include this flag if you wish to change the displayed
output to JSON format. Preserving the JSON data structure makes
the information easier to parse.

### Login Parameters

The following parameters can be included to login to a
server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided
iLO URL along with the user and password flags to
login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the
password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with
the user and URL flags to login. Use the provided
iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after
this command is completed. Using this flag when not logged in will
have no effect.

### Examples

Use option --firmware to list the FW and its versions.

```shell
ilorest serverinfo --firmware

------------------------------------------------
Firmware Information
------------------------------------------------
iLO 5 : 2.55 Sep 12 2021
System ROM : U32 v2.30 (02/11/2020)
Intelligent Platform Abstraction Data : 11.0.0 Build 15
System Programmable Logic Device : 0x2A
Power Management Controller Firmware : 1.0.7
Power Supply Firmware : 1.00
Innovation Engine (IE) Firmware : 0.2.2.0
Server Platform Services (SPS) Firmware : 4.1.4.339
Server Platform Services (SPS) Descriptor : 1.2 0
Redundant System ROM : U32 v2.30 (02/11/2020)
Intelligent Provisioning : 3.40.147
Power Management Controller FW Bootloader : 1.1
HPE Smart Storage Energy Pack 1 Firmware : 0.60
TPM Firmware : 73.0
HPE Eth 10/25Gb 2p 621SFP28 Adptr : 08.50.22
HPE Ethernet 1Gb 4-port 331i Adapter - NIC : 20.14.62
HPE Smart Array P408i-a SR Gen10 : 2.59-18
Embedded Video Controller : 2.5
Drive : HPD1
```

Use option --proxy to view proxy settings.
You can output the information to json file using `--json` or `-j` option.

```shell
ilorest serverinfo --proxy

------------------------------------------------
Proxy Information
------------------------------------------------
ProxyPassword : None
ProxyPort : 8080
ProxyServer : proxy.exampe.net
ProxyUserName :
```

## Serverlogs Command

### Syntax

serverlogs `--selectlog=[Log_Selection] [Optional Parameters]`

### Description

Command for downloading and performing log operations.

:::warning Warning
You must use the default name when downloading AHS logs,
the -f parameter is not supported.
:::

### Parameters

- **AHS**

Use this with the --selectlog option to perform operations on the AHS logs.

- **IEL**

Use this with the --selectlog option to perform operations on the IEL logs.

- **IML**

Use this with the --selectlog option to perform operations on the IML logs.

- **SL**

To perform operations on the Security logs.

- **-h, --help**

Including the help flag will display help for the command.

- **-f FILENAME, --filename=FILENAME**

Use this flag if you wish to use a different filename than the default one.
The default filename is `ilorest.json`.

- **--filter=FILTER**

Optionally set a filter value and a filter attribute to filter logs.

- **-j, --json**

Optionally include this flag if you wish to change the displayed
output to JSON format. Preserving the JSON data structure makes
the information easier to parse.

- **--selectlog=SERVICE**

Read log from the given log service. Options: IML, IEL or AHS.

- **-c, --clearlog**

Clears the logs for the selected option.

- **--customiseAHS=CUSTOMISEAHS**

Allows customized AHS log data to be downloaded.

- **--downloadallahs**

Allows complete AHS log data to be downloaded.

- **--directorypath=DIRECTORYPATH**

Directory path for the ahs file.

- **-m MAINMES, --maintenancemessage=MAINMES**

Maintenance message to be inserted into the log.
(IML LOGS ONLY FEATURE)

- **--mpfile=MPFILENAME**

Use the provided filename to obtain server information.

- **-o OUTDIRECTORY, --outputdirectory=OUTDIRECTORY**

Use the provided directory to output data for multiple
server downloads.

- **--mplog=MPLOG**

Used to indicate the logs to be downloaded on multiple servers.
Allowable values: IEL, IML, AHS, all or combination of any two.

- **-r REPIML, --repair=REPIML**

Repair the IML log with the given ID.

### Login Parameters

The following parameters can be included to login
to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided
iLO URL along with the user and password flags to
login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with
the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the
user and URL flags to login. Use the provided iLO password
corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server
after this command is completed. Using this flag when not
logged in will have no effect.

### Examples

Select `AHS` to download AHS logs from a server to a file. The filename is
pre-generated from the server serial number and date and time
the AHS log was gathered.

```shell
ilorest serverlogs --selectlog=AHS
```

To view logs select a log using the `--selectlog` option.
You can output logs to a file with the `(-f, --filename)` option.

```shell
ilorest serverlogs --selectlog=IML

@odata.type=#LogEntry.v1_0_0.LogEntry
Name=Integrated Management Log
Created=2019-02-02T22:02:40Z
@odata.id=/redfish/v1/Systems/1/LogServices/IML/Entries/1/
@odata.context=/redfish/v1/$metadata#LogEntry.LogEntry
Id=1
Oem=
     Hpe=
          @odata.type=#HpeLogEntry.v2_1_0.HpeLogEntry
          Count=1
          Updated=2019-02-02T22:02:40Z
          Code=1
          EventNumber=2054
          @odata.context=/redfish/v1/$metadata#HpeLogEntry.HpeLogEntry
          Class=33
          Categories=Maintenance
                      Administration
OemRecordFormat=Hpe-IML
Message=IML Cleared (iLO 5 user: admin)
EntryType=Oem
Severity=OK
```

To filter logs you can use the `--filter` option.

```shell
ilorest serverlogs --selectlog=IML --filter Id=1

@odata.type=#LogEntry.v1_0_0.LogEntry
Name=Integrated Management Log
Created=2019-02-02T22:02:40Z
@odata.id=/redfish/v1/Systems/1/LogServices/IML/Entries/1/
@odata.context=/redfish/v1/$metadata#LogEntry.LogEntry
Id=1
Oem=
     Hpe=
          @odata.type=#HpeLogEntry.v2_1_0.HpeLogEntry
          Count=1
          Updated=2019-02-02T22:02:40Z
          Code=1
          EventNumber=2054
          @odata.context=/redfish/v1/$metadata#HpeLogEntry.HpeLogEntry
          Class=33
          Categories=Maintenance
                      Administration
OemRecordFormat=Hpe-IML
Message=IML Cleared (iLO 5 user: admin)
EntryType=Oem
Severity=OK
```

Use the `--customiseAHS` with a string to customize AHS results.
This is only available for downloading remote AHS logs.
This command will only download AHS logs from
January 26th 2019 to February 1st 2019.

```shell
serverlogs --selectlog=AHS --customiseAHS "from=2019-01-26&&to=2019-02-01"
```

Clear logs by selecting a log with `--selectlog` and including
the `(-c, --clearlog)` option. This command will clear the AHS logs.

```shell
ilorest serverlogs --selectlog=AHS --clearlog
One or more properties were changed and will not take effect until the device is reset and system is rebooted
```

To insert an IML log use the `(-m, --maintenancemessage)` flag.
This is only available with IML logs.

```shell
ilorest serverlogs --selectlog=IML -m "Text message for maintenance"
[201] The operation completed successfully.
```

To set an IML log as repaired use the `(-r, --repair)` option.
Specify the Id of a log to mark as repaired.
You can only repair entries with severities of `Critical` or `Warning`.

```shell
ilorest serverlogs --selectlog=IML --filter Severity=Critical

@odata.type=#LogEntry.v1_0_0.LogEntry
Name=Integrated Management Log
Created=2019-02-02T22:08:32Z
@odata.id=/redfish/v1/Systems/1/LogServices/IML/Entries/3/
@odata.context=/redfish/v1/$metadata#LogEntry.LogEntry
Id=3
Oem=
     Hpe=
          @odata.type=#HpeLogEntry.v2_1_0.HpeLogEntry
          Count=2
          Updated=2019-02-02T22:10:05Z
          Code=1043
          EventNumber=2057
          @odata.context=/redfish/v1/$metadata#HpeLogEntry.HpeLogEntry
          RecommendedAction=Update the Innovation Engine Firmware.
          LearnMoreLink=https://www.hpe.com/support/class0x0032code0x0413-gen10
          Repaired=False
          Class=50
          Categories=Security
OemRecordFormat=Hpe-IML
Message=Innovation Engine Image Authentication Error. The Innovation Engine image could not be authenticated.
EntryType=Oem
Severity=Critical
ilorest serverlogs --selectlog=IML -r 3
The operation completed successfully.
ilorest serverlogs --selectlog=IML --filter Id=3

@odata.type=#LogEntry.v1_0_0.LogEntry
Name=Integrated Management Log
Created=2019-02-02T22:08:32Z
@odata.id=/redfish/v1/Systems/1/LogServices/IML/Entries/3/
@odata.context=/redfish/v1/$metadata#LogEntry.LogEntry
Id=3
Oem=
     Hpe=
          @odata.type=#HpeLogEntry.v2_1_0.HpeLogEntry
          Count=3
          Updated=2019-02-02T22:12:20Z
          Code=1043
          EventNumber=2057
          @odata.context=/redfish/v1/$metadata#HpeLogEntry.HpeLogEntry
          RecommendedAction=Update the Innovation Engine Firmware.
          LearnMoreLink=https://www.hpe.com/support/class0x0032code0x0413-gen10
          Repaired=True
          Class=50
          Categories=Security
OemRecordFormat=Hpe-IML
Message=Innovation Engine Image Authentication Error. The Innovation Engine image could not be authenticated.
EntryType=Oem
Severity=OK
```

## Serverstate Command

### Syntax

`serverstate [Optional Parameter]`

### Description

Returns the current state of the server.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

### Login Parameters

The following parameters can be included to login to
a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided
iLO URL along with the user and password flags
to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along
with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and
URL flags to login. Use the provided iLO password corresponding
to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server
after this command is completed. Using this flag when not
logged in will have no effect.

### Examples

To return the serverstate run the command without arguments.
Possible values include: None, Unknown,
Reset, PowerOff, InPost, InPostDiscoveryComplete, FinishedPost.

```shell
ilorest serverstate
The server is currently in state: FinishedPost
```

## SetTwoFactorAuthentication Command

### Syntax

`settwofactorauthentication [enable/disable/status/smtp] [OPTIONS]`

### Description

Manage the HPE iLO Two Factor Authentication (TFA).
The following actions can be performed:
Configure the iLO SMTP settings, get and set
(enable/disable) TFA. Refer to the
[TFA section](/docs/redfishservices/ilos/supplementdocuments/tfa/)
for more information.

### Parameters

- **enable**

Use this command to enable TFA (Two Factor Authentication).

- **disable**

Use this to disable the TFA.

- **status**

Use this to check the status of TFA enablement.

- **smtp**

Use this to manage the SMTP settings on the server.

- **-h, --help**

Including the help flag will display help for the command.

- **--smtpfortfaenabled true**

Use this for setting SMTP for TFA, value can be either true or false.

- **--alertmailsenderdomain test@test.com**

Use this to provide valid domain value for SMTP settings

- **--alertmailsmtpserver  smtp.test.com**

Use this to provide valid SMTP server value for SMTP settings

- **--alertmailsmtpport  587**

Use this to provide valid smtp port value for smtp settings

- **-j, --json**

Use this command to change the displayed output to JSON format.
Preserving the JSON data structure makes the information easier to parse.

### Login Parameters

The following parameters can be included to
login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet,
use the provided iLO URL along with the user and password
flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the
password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet,
use this flag along with the user and URL flags to login.
Use the provided iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this
command is completed. Using this flag when not logged in will have no effect.

### Examples

To set the SMTP settings on the server

```Shell
ilorest settwofactorauthentication smtp --smtpfortfaenabled true --alertmailsenderdomain test@test.com --alertmailsmtpserver smtp.test.com --alertmailsmtpport 587
The operation completed successfully.
```

To enable TFA (Two Factor Authentication)

```Shell
ilorest settwofactorauthentication enable 
The operation completed successfully.
```

To check the status of TFA enablement

```Shell
ilorest settwofactorauthentication status 
TFA Status : Enabled
SMTP for TFA Status : True
```

To disable TFA (Two Factor Authentication)

```Shell
ilorest settwofactorauthentication disable
The operation completed successfully.
```

## Sigrecompute Command

### Syntax

`sigrecompute [OPTIONS]`

### Description
Recalculate the signature on the systems configuration.

:::info NOTE

The `sigrecompute` command is not available on Redfish systems.
:::

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

### Login Parameters

The following parameters can be included to login to a server in
the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along
with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL
flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and
URL flags to login. Use the provided iLO password corresponding to
the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after
this command is completed. Using this flag when not logged in
will have no effect.

### Examples

To Recalculate the signature on the systems
configuration run the command without arguments.

```shell
ilorest sigrecompute
The operation completed successfully.
```

## Singlesignon Command

### Syntax

`Singlesignon [OPTIONS]`

### Description

Command for all single sign on available actions.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

### Login Parameters

The following parameters can be included to login to a
server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the server in the
same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the
password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the
user and URL flags to login. Use the provided iLO password
corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server
after this command is completed. Using this flag when not
logged in will have no effect.

### Examples

To delete a specific SSO record by running the command
with the `deleterecord` argument and specify it by number.

```shell
ilorest singlesignon deleterecord 1
The operation completed successfully.
```

To delete a specific SSO record by running the command
with the `deleterecord` argument followed by the `all` keyword.

```shell
ilorest singlesignon deleterecord all
The operation completed successfully.
```

To import a SSO DNS name run the command with
the `dnsname` argument followed by the DNS to import.

```shell
ilorest singlesignon importdns dnsname
The operation completed successfully.
```

To import a SSO certificate from a file run the command
with the `importcert` argument followed by the certificate
file to import. You can also import the certificate by URI,
by specifying a URI path to the certificate instead.

```shell
ilorest singlesignon importcert certfile.txt
The operation completed successfully.
```

## Virtualmedia Command

### Syntax

`virtualmedia [ID] [URI] [OPTIONS]`

### Description

Command for inserting and removing virtual media.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--reboot=REBOOT**

Use this flag to perform a reboot command function after
completion of operations.  For help with parameters and
descriptions regarding the reboot flag, run help reboot.

- **--remove**

Use this flag to remove the media from the selection.

- **--bootnextreset**

Use this flag if you wish to boot from the image on next server reboot.

### Login Parameters

The following parameters can be included to login to a server
in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided
iLO URL along with the user and password flags
to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag
along with the password and URL flags to login
to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag
along with the user and URL flags to login.
Use the provided iLO password corresponding to the username you gave to login.

:::info NOTE

The image will be ejected automatically on the second server
reboot so that the server does not boot to the image twice.
:::

- **--logout**

Optionally include the logout flag to log out of the server
after this command is completed. Using this flag when not
logged in will have no effect.

### Examples

To view current virtual media run the command without arguments.

```shell
ilorest virtualmedia
Available Virtual Media Options:
[1] Media Types Available: Floppy USBStick  Image Inserted: None
[2] Media Types Available: CD DVD  Image Inserted: None
```

To insert virtual media specify the type of virtual media by
Id number followed by the URI location to the image.
You can specify the media to boot next reset by including
the `--bootnextreset` option.

```shell
ilorest virtualmedia 2 https://xx.xx.xx.xx/path/to/vm.iso --bootnextreset
The operation completed successfully.
ilorest virtualmedia
Available Virtual Media Options:
[1] Media Types Available: Floppy USBStick  Image Inserted: None
[2] Media Types Available: CD DVD  Image Inserted: https://xx.xx.xx.xx/path/to/vm.iso
```

To remove an inserted media specify the type of virtual
media by Id number and include the `--remove` option.

```shell
ilorest virtualmedia 2 --remove
The operation completed successfully.
ilorest virtualmedia
Available Virtual Media Options:
[1] Media Types Available: Floppy USBStick  Image Inserted: None
[2] Media Types Available: CD DVD  Image Inserted: None
```
