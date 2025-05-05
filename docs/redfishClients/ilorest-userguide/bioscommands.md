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
  title: BIOS Commands
---

# BIOS commands

This section details usage and provides examples of HPE iLOrest commands
related to the BIOS configuration.

Refer to the
[Bios data model](/docs/concepts/biosdatamodel/)
section for managing standard Bios attributes.

As mentioned in the
[HPE Bios](/docs/redfishservices/ilos/supplementdocuments/biosdoc/)
section, HPE Bios is composed of:

- **Bios attributes** (use `ilorest get --select Bios --json` to
  retrieve the current and pending settings in JSON format).
- **OEM Bios resources** (i.e.
  ISCI, Bootorder, server config lock or KMS settings)
  The exhaustive list of OEM Bios resources can be
  retrieved with the following example:

```text Generic request
GET /redfish/v1/systems/1/bios/?$select=Oem/Hpe/Links
```

```shell iLOrest
# The following request retrieves Bios related URIs
# using a recursive jq request, ignoring errors
# and 'null' responses

ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest rawget --silent \
        '/redfish/v1/systems/1/bios/?$select=Oem/Hpe/Links' | \
        jq -r '..|."@odata.id"?' | grep -v null
ilorest logout
```

```text iLO 5 response body
/redfish/v1/systems/1/bios/
/redfish/v1/systems/1/bios/baseconfigs/
/redfish/v1/systems/1/bios/boot/
/redfish/v1/systems/1/bios/kmsconfig/
/redfish/v1/systems/1/bios/mappings/
/redfish/v1/systems/1/bios/serverconfiglock/
/redfish/v1/systems/1/bios/tlsconfig/
/redfish/v1/systems/1/bios/iscsi/
```

```text iLO 6 response body

/redfish/v1/systems/1/bios/
/redfish/v1/systems/1/bios/oem/hpe/baseconfigs/
/redfish/v1/systems/1/bios/oem/hpe/boot/
/redfish/v1/systems/1/bios/oem/hpe/kmsconfig/
/redfish/v1/systems/1/bios/oem/hpe/mappings/
/redfish/v1/systems/1/bios/oem/hpe/serverconfiglock/
/redfish/v1/systems/1/bios/oem/hpe/tlsconfig/
/redfish/v1/systems/1/bios/oem/hpe/iscsi/
```

## BiosDefaults command

### Syntax

`biosdefaults [Optional Parameters]`

### Description

Depending on the supplied parameters,
this command sets Bios attributes to factory defaults or
to custom user defaults. The `--mananufacturingdefaults`
parameter sets both Bios attributes and OEM Bios resources
to factory/manufacturing defaults.

{% admonition type="success" name="TIP" %}
Refer to the
[HPE BIOS](/docs/redfishservices/ilos/supplementdocuments/biosdoc/)
section for advance
detail concerning default **Bios attributes** and **OEM Bios resources**.
{% /admonition %}

Run with no parameter, the command resets Bios attributes to
factory defaults. OEM Bios resources are not modified.
A server reset is required to take this action into effect.

{% admonition type="success" name="TIP" %}
Use the [pending command](/docs/redfishclients/ilorest-userguide/ilocommands/#pending-command) to view the attributes
that will be reset after next reboot.
{% /admonition %}

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this
flag if second-level BIOS authentication is needed for
the command to execute.

{% admonition type="info" name="NOTE" %}
This flag is used only on iLO 4 based systems and not
required on iLO 5 and iLO 6 based systems.
{% /admonition %}

- **--reboot=REBOOT**

Use this flag to perform a reboot of the server after
completion of operations.
For help with parameters and descriptions
regarding the reboot flag, run `help reboot`.

- **--userdefaults**

Sets Bios attributes to
[user defaults](/docs/redfishservices/ilos/supplementdocuments/biosdoc/#reset-bios-attributes-to-user-defaults)
instead of
[factory defaults](/docs/redfishservices/ilos/supplementdocuments/biosdoc/#reset-bios-attributes-to-factory-defaults).

- **--manufacturingdefaults**

Sets Bios attributes **and** OEM Bios resources to
[manufacturing/factory](/docs/redfishservices/ilos/supplementdocuments/biosdoc/#reset-bios-attributes-and-hpe-bios-resources)
defaults.

{% admonition type="success" name="TIP" %}
Use the [pending command](/docs/redfishclients/ilorest-userguide/ilocommands/#pending-command)
to view the attributes that will be reset after next reboot.
{% /admonition %}

### Login Parameters

The following parameters can be included to login
to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the user and password flags to login to the
server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, including this flag along with
the password and URL flags can be used to login to a server
in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and
URL flags to login. Use the provided iLO password corresponding to
the username you gave to login.

- **--https**

Use the provided CA bundle or SSL certificate with your login to connect
securely to the system in remote mode. This flag has no effect in
local mode.

### Examples

{% admonition type="info" name="NOTE" %}
Changes are not applied until the system is reset.
{% /admonition %}

```shell Reset of Bios attributes to factory default
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest biosdefaults
The operation completed successfully.
ilorest logout
```

```shell Reset of Bios attributes to user defaults
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest biosdefaults --userdefaults
Resetting BIOS attributes and settings to user defaults.
The operation completed successfully.
ilorest logout
```

The following example simultaneously logs in to the server at the provided URL
(`--url`) with the provided username (`-u`) and password (`-p`).
It sets the Bios attributes back to default settings, then reboots
(`--reboot`) the server to apply the changes.

```shell
ilorest biosdefaults --url xx.xx.xx.xx -u username -p password --reboot=ForceRestart
Discovering data...Done
The operation completed successfully.
The operation completed successfully.
```

## Bootorder command

### Syntax

`bootorder [Boot Order] [Optional Parameters]`

### Description

This command prints a list of entries when no arguments are provided.
Run this command with arguments to change the bootorder and set
continuous and one-time boot settings. Arguments for the bootorder
command include entries as a list, which is enumerated in the order
of the default command. Entries provided are rotated, in order,
to the top of the boot queue; missing entries are appended to
the end of the new queue, in order. Changes do not take effect
until a reboot. To perform a one-time boot, continuous boot,
or disable continuous boot or one-time boot, use the respective options.

### Parameters

- **Boot Order**

The boot order can be specified as a list of numbers or as a
list of partial strings for matching. If omitted, displays
the current boot order. See examples for usage and syntax.

- **-h, --help**

Including the help flag will display help for the command.

- **--commit**

Use this flag when you are ready to commit all pending changes.
Some changes made in this way will be updated instantly,
while others will be reflected the next time the server is started.

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password. Include this
flag if second-level BIOS authentication is needed for the command to execute.

{% admonition type="info" name="NOTE" %}
This flag is used only on iLO 4 systems and not required on iLO 5 systems.
{% /admonition %}

- **--reboot=REBOOT**

Use this flag to perform a reboot command function after
completion of operations. For help with parameters and descriptions
regarding the reboot flag, run `help reboot`.

- **--onetimeboot=ONETIMEBOOT**

Use this flag to configure a one-time boot option. Using this
flag will prioritize the provided boot source only on the very
next time the server is booted.

- **--continuousboot=CONTINUOUSBOOT**

Use this flag to enable a continuous boot option. Using this
flag will cause the system to boot to the selected device
every time the system boots.

- **--disablebootflag**

Use this to disable either continuous or one-time boot modes.

- **--securebootkeys=SECUREBOOT**

Use this flag to perform actions on secure boot keys.
Possible values include defaultkeys: resets all keys to default,
deletekeys: deletes all keys, deletepk: deletes all product keys.

### Login Parameters

The following parameters can be included to login to
a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided
iLO URL along with the user and password flags
to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, including this flag
along with the password and URL flags can be used
to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along
with the user and URL flags to login. Use the provided
iLO password corresponding to the username you gave to login.

- **--https**

Use the provided CA bundle or SSL certificate with your
login to connect
securely to the system in remote mode. This flag has
no effect in local mode.

### Examples

Run without arguments to view the current persistent boot order,
continuous and one time boot options, and continuous and one
time boot UEFI options.

```shell
root > ./ilorest bootorder
Current Persistent Boot Order:
1. HD.EmbRAID.1.3 (ubuntu)
2. CD.RearUSB.4.2 (Rear USB 4 : AVOCENT HP KVM CNSL USB2 VM, CAC)
3. Generic.USB.1.1 (Generic USB Boot)
4. HD.SD.1.2 (Internal SD Card 1 : Generic USB3.0-CRW)
5. HD.EmbRAID.1.2 (Embedded RAID 1 : HPE Smart Array P408i-a SR Gen10 - Size:1.7 TiB Port:P1I Bay:1 Box:3)
6. NIC.FlexLOM.1.1.Httpv4 (Embedded FlexibleLOM 1 Port 1 : HPE Ethernet 1Gb 4-port 331FLR Adapter - NIC (HTTP(S) IPv4))
7. NIC.FlexLOM.1.1.IPv4 (Embedded FlexibleLOM 1 Port 1 : HPE Ethernet 1Gb 4-port 331FLR Adapter - NIC (PXE IPv4))
8. NIC.FlexLOM.1.1.Httpv6 (Embedded FlexibleLOM 1 Port 1 : HPE Ethernet 1Gb 4-port 331FLR Adapter - NIC (HTTP(S) IPv6))
9. NIC.FlexLOM.1.1.IPv6 (Embedded FlexibleLOM 1 Port 1 : HPE Ethernet 1Gb 4-port 331FLR Adapter - NIC (PXE IPv6))

Continuous and one time boot options:
1. None
2. Cd
3. Hdd
4. Usb
5. SDCard
6. Utilities
7. Diags
8. BiosSetup
9. Pxe
10. UefiShell
11. UefiHttp
12. UefiTarget

Continuous and one time boot uefi options:
1. HD.EmbRAID.1.3 (ubuntu)
2. CD.RearUSB.4.2 (Rear USB 4 : AVOCENT HP KVM CNSL USB2 VM, CAC)
3. Generic.USB.1.1 (Generic USB Boot)
4. HD.SD.1.2 (Internal SD Card 1 : Generic USB3.0-CRW)
5. HD.EmbRAID.1.2 (Embedded RAID 1 : HPE Smart Array P408i-a SR Gen10 - Size:1.7 TiB Port:P1I Bay:1 Box:3)
```

List numbers associated with the `Current Persistent Boot Order`
list to set a new boot order. Any numbers left off of the new
list will be added to the end. Using the previous examples
Current Persistent Boot Order, this command will place
`Generic.USB.1.1`, `HD.SD.1.2`, and `HD.EmbRAID.1.8`
at the top in that order. The commit flag will commit
the changes, otherwise changes are not saved.

```shell
iLOrest > bootorder [11,6,3] --commit
Committing changes...
One or more properties were changed and will not take effect until system is reset.
iLOrest > bootorder

Current Persistent Boot Order:
1. Generic.USB.1.1 (Generic USB Boot)
2. HD.SD.1.2 (Internal SD Card 1 : Generic USB3.0-CRW)
3. HD.EmbRAID.1.8 (Red Hat Enterprise Linux)
4. HD.EmbRAID.1.6 (sles-secureboot)
5. HD.EmbRAID.1.7 (Windows Boot Manager)
6. NIC.LOM.1.1.IPv4 (Embedded LOM 1 Port 1 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC (PXE IPv4))
7. NIC.LOM.1.1.Httpv4 (Embedded LOM 1 Port 1 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC (HTTP(S) IPv4))
8. HD.EmbRAID.1.2 (Embedded RAID 1 : HPE Smart Array P408i-a SR Gen10 - Size:279.3 GiB Port:1I Bay:1 Box:1)
9. HD.EmbRAID.1.3 (Embedded RAID 1 : HPE Smart Array P408i-a SR Gen10 - Size:279.3 GiB Port:1I Bay:2 Box:1)
10. HD.EmbRAID.1.4 (Embedded RAID 1 : HPE Smart Array P408i-a SR Gen10 - Size:279.3 GiB Port:1I Bay:3 Box:1)
11. HD.EmbRAID.1.5 (Embedded RAID 1 : HPE Smart Array P408i-a SR Gen10 - Size:279.3 GiB Port:1I Bay:4 Box:1)
12. NIC.LOM.1.1.Httpv6 (Embedded LOM 1 Port 1 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC (HTTP(S) IPv6))
13. NIC.LOM.1.1.IPv6 (Embedded LOM 1 Port 1 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC (PXE IPv6))
...
```

Use partial string matching to set a boot order
independent of the current boot order. All boot
options not listed will be added to the end of the boot order.
This command will set All v4 NICs first, followed by
all hard drives, followed by Generic.USB.1.1, then committing the results.

```shell
iLOrest > bootorder NIC.*v4 HD* Generic.USB.1.1
iLOrest > bootorder

Current Persistent Boot Order:
1. NIC.LOM.1.1.IPv4 (Embedded LOM 1 Port 1 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC (PXE IPv4))
2. NIC.LOM.1.1.Httpv4 (Embedded LOM 1 Port 1 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC (HTTP(S) IPv4))
3. HD.SD.1.2 (Internal SD Card 1 : Generic USB3.0-CRW)
4. HD.EmbRAID.1.8 (Red Hat Enterprise Linux)
5. HD.EmbRAID.1.6 (sles-secureboot)
6. HD.EmbRAID.1.7 (Windows Boot Manager)
7. HD.EmbRAID.1.2 (Embedded RAID 1 : HPE Smart Array P408i-a SR Gen10 - Size:279.3 GiB Port:1I Bay:1 Box:1)
8. HD.EmbRAID.1.3 (Embedded RAID 1 : HPE Smart Array P408i-a SR Gen10 - Size:279.3 GiB Port:1I Bay:2 Box:1)
9. HD.EmbRAID.1.4 (Embedded RAID 1 : HPE Smart Array P408i-a SR Gen10 - Size:279.3 GiB Port:1I Bay:3 Box:1)
10. HD.EmbRAID.1.5 (Embedded RAID 1 : HPE Smart Array P408i-a SR Gen10 - Size:279.3 GiB Port:1I Bay:4 Box:1)
11. Generic.USB.1.1 (Generic USB Boot)
12. NIC.LOM.1.1.Httpv6 (Embedded LOM 1 Port 1 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC (HTTP(S) IPv6))
13. NIC.LOM.1.1.IPv6 (Embedded LOM 1 Port 1 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC (PXE IPv6))
...
```

Change the one time boot order using the `--onetimeboot`
option. Specify a option to boot to from
the `Continuous and one time boot options` list.

```shell
iLOrest > bootorder --onetimeboot=Hdd --commit
Committing changes...
The operation completed successfully.
```

Change the continuous boot order using the `--continuousboot` option.
Specify a option to boot to from the `Continuous and one time boot options`
list.

```shell
iLOrest > bootorder --continuousboot=Cd --commit
Committing changes...
The operation completed successfully.
```

To turn off any continuous or one-time boot options that have
been configured, use the `--disablebootflag` option.

```shell
iLOrest > bootorder --disablebootflag --commit
Committing changes...
The operation completed successfully.
```

## iSCSIConfig command

### Syntax

`iscsiconfig [iSCSI Configuration] [Optional Parameters]`

### Description

Use this command to view the current iSCSI configuration,
save the current iSCSI configuration to a file, load an
iSCSI configuration from a file, or view available NIC
resources for iSCSI configuration.

### Parameters

- **--add=ADD**

Use this iSCSI configuration option to add an iSCSI
configuration option.

- **--delete=DELETE**

Use this iSCSI configuration option to delete an iSCSI
configuration option.

- **--modifiy=MODIFY**

Use this iSCSI configuration option to modify an iSCSI
configuration option.

- **--list**

Use this iSCSI configuration option to list the details
of the different iSCSI configurations.

- **-h, --help**

Including the help flag will display help for the command.

- **-f FILENAME, --filename=FILENAME**

Optionally include this flag to use the provided
filename instead of the default `ilorest.json` file.

- **--biospassword=BIOSPASSWORD**

Select this flag to input a BIOS password.
Include this flag if second-level BIOS
authentication is needed for the command to execute.

{% admonition type="info" name="NOTE" %}
This flag is used only on iLO 4 systems.
{% /admonition %}

- **--reboot=REBOOT**

Use this flag to perform a reboot command function
after completion of operations.
For help with parameters and descriptions
regarding the reboot flag, run `help reboot`.

### Login Parameters

The following parameters can be included to
login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided
iLO URL along with the user and password flags to
login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, including this flag
along with the password and URL flags can be used
to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with
the user and URL flags to login. Use the provided iLO
password corresponding to the username you gave to login.

- **--https**

Use the provided CA bundle or SSL certificate with your login to connect
securely to the system in remote mode. This flag has no effect in local mode.

### Examples

Using the `iscsiconfig` command without any options will
display the current ISCSI configuration, including ISCSI
initiator name and currently configured boot entries.

```shell
iLOrest > iscsiconfig

Iscsi Initiator Name: "iqn.2015-02.com.hpe:uefi-U32-Kappa"

Available iSCSI Boot Network Interfaces:
[1] Embedded LOM 1 Port 1 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC
[2] Embedded LOM 1 Port 2 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC
[3] Embedded LOM 1 Port 3 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC
[4] Embedded LOM 1 Port 4 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC
```

Use the list flag to retrieve the current configured iscsi boot attempts.
If none are configured, then all sections will have a message
stating **Not Added**.

```shell
iLOrest > iscsiconfig --list
Current iSCSI Attempts:
[
  {
    "Not Added": {}
  },
  {
    "Not Added": {}
  },
  {
    "Not Added": {}
  },
  {
    "Not Added": {}
  }
]
```

To add an iSCSI boot attempt use the `--add` option,
specifying which iSCSI Network Interface to attempt a boot from.
This command will add a boot attempt from option [2] in
the `Available iSCSI Boot Network Interfaces` list.

```shell
iLOrest > iscsiconfig --add [2]
One or more properties were changed and will not take effect until system is reset.
iLOrest > iscsiconfig --list
Current iSCSI Attempts:
[
  {
    "Embedded LOM 1 Port 2 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC": {
      "Attempt 1": {
        "iSCSILUN": "0",
        "iSCSIAttemptName": "1",
        "iSCSIConnectTimeoutMS": 20000,
        "iSCSIChapUsername": "",
        "iSCSIChapSecret": "",
        "iSCSIInitiatorGateway": "0.0.0.0",
        "iSCSINicSource": "NicBoot2",
        "iSCSIConnection": "Disabled",
        "iSCSIInitiatorNetmask": "0.0.0.0",
        "iSCSITargetName": "",
        "iSCSIReverseChapUsername": "",
        "iSCSIInitiatorInfoViaDHCP": true,
        "iSCSIAttemptInstance": 1,
        "iSCSITargetTcpPort": 3260,
        "iSCSIConnectRetry": 3,
        "StructuredBootString": null,
        "iSCSIReverseChapSecret": "",
        "iSCSIInitiatorIpAddress": "0.0.0.0",
        "iSCSIAuthenticationMethod": "None",
        "iSCSITargetInfoViaDHCP": true,
        "iSCSIChapType": "OneWay",
        "iSCSITargetIpAddress": "0.0.0.0",
        "iSCSIIpAddressType": "IPv4",
        "UEFIDevicePath": null
      }
    }
  },
  {
    "Not Added": {}
  },
  {
    "Not Added": {}
  },
  {
    "Not Added": {}
  }
]
```

Modify properties for boot attempts by outputting them to a file,
editing the file, then apply the changes with
the `--modify` option. You must include the `--list`
option with the `-f` option to write to a file.

```shell
iLOrest > iscsiconfig --list -f output.txt
Results written out to 'output.txt'
iLOrest > iscsiconfig --modify output.txt
One or more properties were changed and will not take effect until system is reset.
```

To delete an iSCSI attempt use the `--delete` option,
specifying which attempt to delete.

```shell
iLOrest > iscsiconfig --list
Current iSCSI Attempts:
[
  {
    "Embedded LOM 1 Port 2 : HPE Ethernet 1Gb 4-port 331i Adapter - NIC": {
      "Attempt 1": {
        "iSCSILUN": "0",
        "iSCSIAttemptName": "1",
        "iSCSIConnectTimeoutMS": 20000,
        "iSCSIChapUsername": "blah",
        "iSCSIChapSecret": "",
        "iSCSIInitiatorGateway": "0.0.0.0",
        "iSCSINicSource": "NicBoot2",
        "iSCSIConnection": "Disabled",
        "iSCSIInitiatorNetmask": "0.0.0.0",
        "iSCSITargetName": "",
        "iSCSIReverseChapUsername": "",
        "iSCSIInitiatorInfoViaDHCP": true,
        "iSCSIAttemptInstance": 1,
        "iSCSITargetTcpPort": 3260,
        "iSCSIConnectRetry": 3,
        "StructuredBootString": null,
        "iSCSIReverseChapSecret": "",
        "iSCSIInitiatorIpAddress": "0.0.0.0",
        "iSCSIAuthenticationMethod": "None",
        "iSCSITargetInfoViaDHCP": true,
        "iSCSIChapType": "OneWay",
        "iSCSITargetIpAddress": "0.0.0.0",
        "iSCSIIpAddressType": "IPv4",
        "UEFIDevicePath": null
      }
    }
  },
  {
    "Not Added": {}
  },
  {
    "Not Added": {}
  },
  {
    "Not Added": {}
  }
]

iLOrest > iscsiconfig --delete 1
One or more properties were changed and will not take effect until system is reset.
iLOrest > iscsiconfig --list
Current iSCSI Attempts:
[
  {
    "Not Added": {}
  },
  {
    "Not Added": {}
  },
  {
    "Not Added": {}
  },
  {
    "Not Added": {}
  }
]
```

## Setpassword command

#### Syntax

`Setpassword –-newpassword <newpass> --currentpassword <currpass>`

#### Description

Sets the BIOS admin password and power on password.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--poweron**

Use this flag to set power on password instead of the BIOS admin password.

- **--reboot=REBOOT**

Use this flag to perform a reboot command function after completion of
operations. 'REBOOT' is replaceable parameter that can have multiple values.
For help with parameters and descriptions regarding the reboot flag,
run help reboot.

#### Login Parameters

The following parameters can be included to login to a
server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along
with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, including this flag along with the
password and URL flags can be used to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL
flags to login. Use the provided iLO password corresponding to
the username you gave to login.

- **--https**

Use the provided CA bundle or SSL certificate with your login to connect
securely to the system in remote mode. This flag has no effect in local mode.

#### Examples

To set a new password, include the new password and the current password.
When setting a bios or power on password with no previous password set,
`OLD_PASSWORD` must be set to `None` signifying no password.

```shell
iLOrest > setpassword --newpassword newpassword --currentpassword None

setpassword --newpassword newpass1 --currentpassword
The operation completed successfully.
```

When setting a bios or power on password back to nothing, `NEW_PASSWORD`
must be set to `""`.

```shell
iLOrest > setpassword --newpassword None --currentpassword oldpassword

setpassword --newpassword None --currentpassword newpass1
The operation completed successfully.
```

To set the power on password, include the `--poweron` option.

```shell
iLOrest > setpassword --newpassword newpassword --currentpassword None --poweron
The operation completed successfully.
```
