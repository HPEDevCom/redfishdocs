---
seo:
  title: Cmdlets examples
disableLastModified: false
toc:
  enable: true
  maxDepth: 2
---


# PowerShell Redfish examples

This section provides useful examples to start writing PowerShell management scripts. In addition, several sample scripts are included in the iLO Cmdlets distribution, in a folder named Samples, which is located in the directory specified by the user while installing. The primary purpose of these sample scripts is to provide instructions on the following scripting aspects:

- Samples for providing parameters for a cmdlet (such as named parameters, pipeline parameters, imported parameters from CSV).
- Samples for handling with errors or exceptions in the script.
- Samples for implementing scripts for complicated functions, which need several cmdlets. Examples of the functions are generating and importing iLO certificate settings, iLO IP to use, and Active Directory authentication.

The iLO script examples are packaged along with the .msi installer and Readme First installation document. Comprehensive PowerShell script examples are available in the <a href="https://github.com/HewlettPackard/PowerShell-ProLiant-SDK" target="_blank">Hewlett Packard GitHub repository</a>.

:::success TIP
Use `[System.GC]::Collect()` to optimize client system memory consumption during script execution.
:::

## Using the Find-HPEiLO Cmdlet

When learning about the iLO cmdlets, a good place to start is with the `Find-HPEiLO` cmdlet. This cmdlet scans IP addresses and finds HPE iLOs that exist within the specified range. The Range parameter can be a single IP address, a subnet list, or a range of IP addresses. When the command finds an iLO, it obtains basic information about the iLO without requiring a username or password. This can be useful for performing a quick inventory within a data center, or perhaps determining what firmware versions exist. The information is returned as a single object or as an array of objects of iLOs found.

:::success TIP
If a comma is included in the range, double quotes are required. PowerShell interprets a comma (,) as a list separator. Without double quotes ("), part of what should be a string is interpreted by PowerShell as a number. The operation of combined ranges is defined as creating a combination of each subnet address with each other subnet.
:::

Use the following syntax for specifying the range parameter:

| Range parameter | Description |
| --- | --- |
| `10.20.30.1` | Single IP |
| `10.20.30.1-11` | Range of eleven addresses: from `10.20.30.1` to `10.20.30.11` |
| `"10.20.30.1,15"` | Two discrete addresses: `10.20.30.1` and `10.20.30.15` |
| `"10.20.30,29.93,103"` | Specifies four discrete addresses: `10.20.30.93`, `10.20.30.103`, `10.20.29.93`, and `10.20.29.103` |
| `"10.20.30,29.93-103"` | Specifies two ranges of eleven addresses: `10.20.30.93` through `10.20.30.103` and `10.20.29.93` through `10.20.29.103` |

:::info NOTE
The default value for the Timeout parameter is 30 seconds. If the timeout value is not long enough for iLOs to respond, try using a Timeout parameter with a larger value.
:::

:::success TIP
To monitor the operation of the Find-HPEiLO cmdlet, use the Verbose parameter.
:::

```PowerShell Example 1
PS C:\> Find-HPEiLO 10.20.30.1
IP : 10.20.30.1
Hostname : abc.domain.com
SPN : ProLiant DL380 Gen8
FWRI : 2.55
PN : Integrated Lights-Out 4 (iLO 4)
SerialNumber : CN761109QP
cUUID : 37303137-3332-4E43-3736-313130395150
```

```PowerShell Example 2
# single IP and the Full parameter
PS C:\> $output = Find-HPEiLO 10.20.30.1 -Full
PS C:\> $output
IP : 10.20.30.1
Hostname : abc.domain.com
HostSystemInformation : HPE.iLO.Response.HSI
ManagementProcessor : HPE.iLO.Response.MP
BladeSystem : HPE.iLO.Response.BladeSystem
Spatial : HPE.iLO.Response.RIMPSpatial
Health : HPE.iLO.Response.RIMPHealth
PS C:\> $output.HostSystemInformation
PS C:\> $output.HostSystemInformation
SerialNumber : CN761109QP
SPN : ProLiant DL385p Gen8
UUID : 710723CN761109QP
SP : 1
cUUID : 37303137-3332-4E43-3736-313130395150
Virtual : HPE.iLO.Response.RIMP_HSI_Virtual
ProductID : 710723-371
```

```PowerShell Example 3
# Search range which checks 11 addresses, in which 3 iLOs are
# found.
PS C:\> Find-HPEiLO 10.20.30.1-11
IP : 10.20.30.1
Hostname : abc.domain.com
SPN : ProLiant DL380 Gen8
FWRI : 2.55
PN : Integrated Lights-Out 4 (iLO 4)
SerialNumber : CN761109QS
cUUID : 37303137-3332-4E43-3736-31313039515
IP : 10.20.30.5
Hostname : abc5.domain.com
SPN : ProLiant ML350 Gen9
FWRI : 2.44
PN : Integrated Lights-Out 4 (iLO 4)
SerialNumber : SGH611WL3S
cUUID : 35343537-3433-4753-4836-3131574C335
IP : 10.20.30.6
Hostname : abc6.domain.com
SPN : ProLiant DL360 Gen10
FWRI : 1.20
PN : Integrated Lights-Out 5 (iLO 5)
30 Overview
SerialNumber : CN76370GNS
cUUID : 36334C44-2D30-4E43-3736-333730474E4
```

```PowerShell Example 4
# Pipe output from Find-HPEiLO through Add-Member to add two required fields, and
# then to Connect-HPEiLO that connects to the reachable iLOs.
PS C:\>$connection = Find-HPEiLO 10.20.30.1-15 |
• {Add-Member -PassThru -InputObject $_ Username admin}|
% {Add-Member -PassThru -InputObject $_ Password admin123}| Connect-HPEiLO
PS C:/>$connection
IP : 10.20.30.40
Hostname :
Timeout : 30
DisableCertificate
Authentication : True
TargetInfo : @{ProductName=ProLiant ML350 Gen9;
ServerFamily=ProLiant;
ServerGeneration=Gen9;
ServerModel=ML350;
iLOGeneration=iLO4;
iLOFirmwareVersion=2.62;
SystemROM=P92v2.72 (03/25/2019);
ProcessorName=Intel(R) Xeon(R)
CPU E5-2603 v3 @ 1.60GHz}
ExtendedInfo : @{UserSuppliedAddress=10.20.30.40;
HttpConnectAddress=10.20.30.40;
UserName=admin;
Modifier1=vyUuq0Oh/
XOc1n+Vv4w1YcFF+FvdoVk/FUEH2cdAD/4=;
Modifier2=4eA+yvA4kyRK8WYwIeT7zA==}
ConnectionInfo : @{RIBCL=; REST=}
IP : 10.20.30.40
Hostname : xyz.abcd.com
Timeout : 30
DisableCertificate
Authentication : True
TargetInfo : @{ProductName=ProLiant DL580 Gen10;
ServerFamily=ProLiant;
ServerGeneration=Gen10;
ServerModel=DL580;
iLOGeneration=iLO5;
iLOFirmwareVersion=2.1;
SystemROM=U34 v2.16 (09/12/2019);
ProcessorName=Intel(R) Genuine processor}
ExtendedInfo : @{UserSuppliedAddress=10.20.30.40;
HttpConnectAddress=10.20.30.40;
UserName=admin;
Modifier1=b3JJfwxwbZSKKyjpgKmn3
QPj16vDZ7Q3oq9ejPZCOPk=;
Modifier2=cqEhobrR75LcegppbRmPWQ==}
ConnectionInfo : @{Redfish=}
```

## Establishing an iLO connection

The HPE iLO Cmdlets support the following generations of HPE iLO based servers. Each generation of servers has a different connection mechanism.

- iLO 4 servers
- iLO 5 \iLO 6 servers

Prerequisites:

- Install HPE iLO Cmdlets on the Windows management client.
- Make sure that the iLO IP address of the target server is reachable on TCP port 443 (HTTPS) from the management client where the Cmdlets are installed.
- The target HPE iLO must have a valid TLS/SSL server certificate. If a valid certificate is not available, use the `DisableCertificateAuthentication` switch parameter to establish a insecure connection.

### Connecting to an HPE iLO 4 based server

To connect to an HPE Gen8 or Gen9 server, execute the `Connect-HPEiLO` Cmdlet with the remote iLO IP address and user credentials. Upon success, a  connection object is returned. Use it to execute other HPE iLO Cmdlets.

The following example creates a connection to an HPE iLO 4 based server that does not have a valid TLS/SSL server certificate.

```PowerShell Connection creation
PS C:\> $connection = Connect-HPEiLO -IP 10.20.30.40 -Username admin -Password admin123 -DisableCertificateAuthentication
```

```PowerShell $connection
PS C:\> $connection
IP : 10.20.30.40
Hostname :
Timeout : 30
DisableCertificate
Authentication : True
TargetInfo : @{ProductName=ProLiant ML350 Gen9;
ServerFamily=ProLiant;
iLOFirmwareVersion=2.62; SystemROM=P92
v2.72 (03/25/2019);
ProcessorName=Intel(R) Xeon(R)
CPU E5-2603 v3 @ 1.60GHz}
ExtendedInfo : @{UserSuppliedAddress=10.20.30.40;
HttpConnectAddress=10.20.30.40;
UserName=admin;
Modifier1=vyUuq0Oh/XOc1n+Vv4w1YcFF+FvdoVk/
FUEH2cdAD/4=;
Modifier2=4eA+yvA4kyRK8WYwIeT7zA==}
ConnectionInfo : @{RIBCL=; REST=}
```

```PowerShell $connection.TargetInfo
PS C:\> $connection.TargetInfo
ProductName : ProLiant ML350 Gen9
ServerFamily : ProLiant
ServerGeneration : Gen9
ServerModel : ML350
iLOGeneration : iLO4
iLOFirmwareVersion : 2.62
SystemROM : P92 v2.72 (03/25/2019)
ProcessorName : Intel(R) Xeon(R) CPU E5-2603 v3 @ 1.60GHz
```

```PowerShell $connection.ExtendedInfo
PS C:\> $connection.ExtendedInfo
UserSuppliedAddress : 10.20.30.40
HttpConnectAddress : 10.20.30.40
UserName : admin
Modifier1 : vyUuq0Oh/XOc1n+Vv4w1YcFF+FvdoVk/FUEH2cdAD/4=
Modifier2 : 4eA+yvA4kyRK8WYwIeT7zA==
```

```PowerShell $connection.ConnectionInfo
PS C:\> $connection.ConnectionInfo | fl
RIBCL : @{AuthToken=ciNRS6xqkr9VO6JV7f1LQQ==; iLOResetWaitTimeout=0}
REST : @{RootUrl=https://10.20.30.40/rest/v1;
XAuthToken=iOIck9yMeVbdoNJaD4Zh1xUHMa1CsiQpP1
MHZls5BpfkG1yMFYgjEAEdZFfUm0Ng;
Location=https://10.20.30.40/rest/v1/
SessionService/Sessions/admin5e385e3ea6a7ef9e;
BIOSAdminPassword=; BIOSAttributeRegistryName
=HpBiosAttributeRegistryP92.1.1.72}
```

### Connecting to an HPE iLO 5 or iLO 6 based server

TBD
