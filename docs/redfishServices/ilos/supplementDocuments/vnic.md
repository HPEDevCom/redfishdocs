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
  title: Managing the iLO Redfish Host Interface (Virtual NIC)
---

## The iLO Redfish Host Interface (Virtual NIC)

Before providing technical details about
the HPE Redfish Host Interface, it is important to clearly
define the terms "out-of-band" and "in-band" and  management.

### Out-of-band management

"Out-of-band" or "remote" management refers to the access of
the [BMC](/docs/etc/glossaryterms/) of
a server from an Operating System (OS) located somewhere on the network.
If the OS is located in the same server as the target BMC,
then, the communication path goes physically out of the server
through a physical network adapter and reaches the BMC in
its external network interface (i.e. iLO dedicated network interface).

The following example opens an out-of-band Redfish session using ilOrest
and cURL (Basic authentication).

  {% tabs %}
{% tab label="iLOrest out" %}

```shell iLOrest out-of-band session
ilorest login ilo_ip -u ilo-user -p password
ilorest get FirmwareVersion --select Manager. --json
{
  "FirmwareVersion": "iLO 6 v1.67"
}
ilorest logout
```
  
  {% /tab %}
{% tab label="cURL out" %}

```shell cURL out-of-band session
cURL --insecure --silent --location -u ilo-user:password  \
     https://ilo-ip/redfish/v1/Managers/1                | \
     jq '.FirmwareVersion'
"iLO 6 v1.67"
```
  
  {% /tab %}
  {% /tabs %}
### In-band management

By definition, "in-band" or "local" management refers
to the access of the [BMC](/docs/etc/glossaryterms/)
of a server from the OS sitting in the same server,
through an internal communication path.

HPE iLO implements the standard
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0270_1.0.0.pdf"
target="_blank">Redfish Host Interface</a>
specification for in-band management.
This host interface is also known as Virtual NIC or vNIC within HPE documents.

The HPE Virtual NIC communication path between the OS and iLO is the DMTF standard alternative to the legacy HPE Channel Interface
(<a href="https://developer.hpe.com/blog/chif-driver-not-found/" target="_blank">CHIF</a>).

{% admonition type="info" name="NOTES" %}

- The CHIF communication path between HPE ProLiant and Synergy Gen12 operating  
  systems and associated iLO 7 has been removed.
  The virtual NIC is the only in-band communication path implemented in iLO 7 based servers (Gen12) and later.
  Refer to this [paragraph](/docs/redfishservices/ilos/supplementdocuments/securityservice/#transitioning-to-hpe-ilo-7)
  for more information.
- When using in-band management through the HPE virtual NIC, authentication is
  enforced even if you logged in
  as a privileged user in the server operating system. Read the
  [transitioning to iLO 7](/docs/redfishservices/ilos/supplementdocuments/securityservice/#transitioning-to-hpe-ilo-7)
  documentation section for more detail.

{% /admonition %}

The following example opens an in-band Redfish session using iLOrest via
CHIF on an iLO 6 based server in
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#securitystate") %} Production {% /link-internal %}
`SecurityState`, and logged as
privileged user `root`. The second tabulation forces the opening of a
Redfish session via the Virtual NIC.

  {% tabs %}
{% tab label="in" %}

```shell in-band CHIF session
ssh root@fdz365g11-1

ilorest login
Discovering data...Done
ilorest get SecurityState --select HpeSecurityService.
SecurityState=Production
ilorest logout
exit
```
  
  {% /tab %}
{% tab label="in" %}

```shell in-band vNIC session
ilorest login --force_vnic -u $u -p $p
ssh root@fdz365g11-1

ilorest login --force_vnic -u $u -p $p
Attempt to login with Vnic...
Discovering data...Done

ilorest get SecurityState --select HpeSecurityService.
SecurityState=Production
ilorest logout
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="success" name="TIPS" %}

- Generic Redfish clients like cURL, PowerShell, Postman don't have the ability
  to open an in-band Redfish session via CHIF.
- Python scripts can create in-band Redfish sessions via CHIf, using
  the `blobstore://.` base URL as mentioned in the
  [quick start](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/quickstart_redfish.py)
  example of the HPE Python ilorest library.

{% /admonition %}

## Managing the Virtual NIC

The status of the iLO Virtual NIC can be retrieved from
the standard `HostInterface`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_other_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#hostinterface") %} subsystem {% /link-internal %}
or from the Hpe OEM extension of the `Manager`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#oem.hpe.virtualnicenabled") %} subsystem {% /link-internal %}.
The following example retrieves these properties from those two locations,
using iLOrest and cURL.

  {% tabs %}
{% tab label="Generic GET of vNIC status" %}

```text Generic GET of vNIC status
1. GET /redfish/v1/Managers/1/HostInterfaces/1/?$select=Status/State, InterfaceEnabled
or
2. GET /redfish/v1/Managers/1/?$select=Oem/Hpe/VirtualNICEnabled
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
# 1.
ilorest login ilo-ip -u ilo-user -p password
ilorest get Status/State InterfaceEnabled --select HostInterface. --json
{
  "InterfaceEnabled": true,
  "Status": {
    "State": "Enabled"     
  }
}
# or 2
ilorest get Oem/Hpe/VirtualNicEnabled --select Manager. --json
{
  "Oem": {
    "Hpe": {
      "VirtualNICEnabled": true
    }
  }
}

ilorest logout
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
# 1. 
curl --insecure --silent --location -u ilo-user:password \
     https://ilo-ip/redfish/v1/Managers/1/HostInterfaces/1/?%24select=Status%2C%20InterfaceEnabled | \
     jq '.'
{
  "@odata.context": "/redfish/v1/$metadata#HostInterface.HostInterface",
  "@odata.etag": "W/\"3008060126\"",
  "@odata.id": "/redfish/v1/Managers/1/HostInterfaces/1/",
  "@odata.type": "#HostInterface.v1_1_1.HostInterface",
  "InterfaceEnabled": true,
  "Status": {
    "State": "Enabled"
  }
} 

# 2.
curl --insecure --silent --location -u ilo-user:password \
     https://ilo-ip/redfish/v1/Managers/1/?%24select=Oem/Hpe/VirtualNICEnabled  | \
     jq '.'
```
  
  {% /tab %}
  {% /tabs %}
### Enabling/disabling the Virtual NIC

The Virtual NIC may be enabled/disabled in HPE iLO either though the iLO Web GUI
or by a Redfish request. An iLO reset is required for this
change to fully take effect.

  {% tabs %}
{% tab label="PATCH request URIs" %}

```text PATCH request URIs
1. Standard URI
PATCH /redfish/v1/Managers/1/HostInterfaces/1

2. Oem/Hpe URI
PATCH /redfish/v1/Managers/1
```
  
  {% /tab %}
{% tab label="Requests body" %}

```json Requests body
# 1. Standard body
{ "InterfaceEnabled": true}

# 2. Oem/Hpe body
{
    "Oem": {
        "Hpe": {
            "VirtualNICEnabled": true
        }
    }
}
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
 "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "MessageId": "iLO.2.30.ResetRequired" 
            }
        ]
    }
}
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password

# 1. Standard command
ilorest set InterfaceEnabled=true --select HostInterface. --commit

# 2. Oem/Hpe command
ilorest set Oem/Hpe/VirtualNicEnabled=true --select Manager. --commit

ilorest iloreset

# Comment: No need to logout after iLO reset.
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="success" name="TIP" %}
Search for string "Virtual NIC" in the <a href="https://www.hpe.com/support/ilo6"
target="_blank">iLO User Guide</a>
to enable and configure the Virtual NIC in
the server operating system.
{% /admonition %}

### vNIC configuration details

The easiest and safest procedure to gather the entire set of vNIC
configuration details is to start with a `GET` request of
the `HostInterfaceCollection` collection, and then follow the links.

{% admonition type="success" name="TIP" %}
Use the `ilorest list` command to make sure `Links` and other
[reserved properties](/docs/redfishclients/ilorest-userguide/globalcommands/#reserved-properties)
are part of the response.
{% /admonition %}

The following example uses iLOrest and cURL to identify the vNIC's
URI via the
`HostInterfaceCollection`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_other_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#hostinterfacecollection") %} collection {% /link-internal %}.

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest list Members --select HostInterfaceCollection. --json
{
  "Members": [
    {
      "@odata.id": "/redfish/v1/Managers/1/HostInterfaces/1/"
    }
  ]
}
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --silent --location -u ilo-user:password \
     https://ilo-ip/redfish/v1/Managers/1/HostInterfaces | \
     jq '.Members[]'
{
  "@odata.id": "/redfish/v1/Managers/1/HostInterfaces/1"
}
```
  
  {% /tab %}
  {% /tabs %}
The following example retrieves the `State` and the vNIC's Ethernet URI
using the `HostInterface` URI found in previous example.

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest list InterfaceEnabled ManagerEthernetInterface --select HostInterface.  --json
{
  "InterfaceEnabled": true,
  "ManagerEthernetInterface": {
    "@odata.id": "/redfish/v1/Managers/1/EthernetInterfaces/3/"
  }
}
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --silent --location -u ilo-user:password    \
     https://ilo-ip/redfish/v1/Managers/1/HostInterfaces/1  |\
     jq '{ManagerEthernetInterface, InterfaceEnabled}' 
{
  "ManagerEthernetInterface": {
    "@odata.id": "/redfish/v1/Managers/1/EthernetInterfaces/3"
  },
  "InterfaceEnabled": true
}
```
  
  {% /tab %}
  {% /tabs %}
The following example retrieves the vNIC Ethernet properties
using the URI found in previous example.

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest get --select EthernetInterface. --filter Id=3 --json
{
  "Description": "Configuration of this Manager USB Ethernet Interface available for access from Host
.",
  "IPv4Addresses": [
    {
      "Address": "16.1.15.1",
      "AddressOrigin": "DHCP",
      "SubnetMask": "255.255.255.252"
    }
  ],
  "IPv4StaticAddresses": [],
  "IPv6AddressPolicyTable": [],
  "IPv6Addresses": [],
  "IPv6StaticAddresses": [],
  "IPv6StaticDefaultGateways": [],
  "Id": "3",
  "InterfaceEnabled": true,
  "LinkStatus": "LinkUp",
  "MACAddress": "0A:CA:FE:F0:0D:04",
  "Name": "Manager Virtual Network Interface",
  "NameServers": [],
  "Oem": {
    "Hpe": {
      "ConfigurationSettings": "Current",
      "InterfaceType": "HostInterface",
      "NICSupportsIPv6": false
    }
  },
  "PermanentMACAddress": "0A:CA:FE:F0:0D:04",
  "StaticNameServers": [],
  "Status": {
    "Health": "OK",
    "State": "Enabled"
  }
}
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --silent --location -u ilo-user:password \
     https://ilo-ip/redfish/v1/Managers/1/EthernetInterfaces/3/ | \
     jq '.'
{
  "@odata.context": "/redfish/v1/$metadata#EthernetInterface.EthernetInterface",
  "@odata.etag": "W/\"2871979682\"",
  "@odata.id": "/redfish/v1/Managers/1/EthernetInterfaces/3/",
  "@odata.type": "#EthernetInterface.v1_4_1.EthernetInterface",
  "Description": "Configuration of this Manager USB Ethernet Interface available for access from Host.",      
  "IPv4Addresses": [
    {
      "Address": "16.1.15.1",
      "AddressOrigin": "DHCP",
      "SubnetMask": "255.255.255.252"
    }
  ],
  "IPv4StaticAddresses": [],
  "IPv6AddressPolicyTable": [],
  "IPv6Addresses": [],
  "IPv6StaticAddresses": [],
  "IPv6StaticDefaultGateways": [],
  "Id": "3",
  "InterfaceEnabled": true,
  "LinkStatus": "LinkUp",
  "Links": {
    "HostInterface": {
      "@odata.id": "/redfish/v1/Managers/1/HostInterfaces/1/"
    }
  },
  "MACAddress": "0A:CA:FE:F0:0D:04",
  "Name": "Manager Virtual Network Interface",
  "NameServers": [],
  "Oem": {
    "Hpe": {
      "@odata.context": "/redfish/v1/$metadata#HpeiLOEthernetNetworkInterface.HpeiLOEthernetNetworkInterface",
      "@odata.type": "#HpeiLOEthernetNetworkInterface.v2_3_4.HpeiLOEthernetNetworkInterface",
      "ConfigurationSettings": "Current",
      "InterfaceType": "HostInterface",
      "NICSupportsIPv6": false
    }
  },
  "PermanentMACAddress": "0A:CA:FE:F0:0D:04",
  "StaticNameServers": [],
  "Status": {
    "Health": "OK",
    "State": "Enabled"
  }
}
```
  
  {% /tab %}
  {% /tabs %}
The iLO Virtual NIC configuration can be retrieved with a GET request
from the `EthernetInterfaceCollection` resource type:

  {% tabs %}
{% tab label="GET vNIC configuration" %}

```text GET vNIC configuration
GET /redfish/v1/Managers/1/EthernetInterfaces/?$filter=Name eq 'Manager Virtual Network Interface'
```
  
  {% /tab %}
{% tab label="iLOrest request 1" %}

```shell iLOrest request 1
ilorest login ilo-ip -u ilo-user -p password 
ilorest get --select EthernetInterface --filter Name="Manager Virtual*" --json
ilorest logout
```
  
  {% /tab %}
{% tab label="iLOrest request 2" %}

```shell iLOrest request 2
Filter="?%24filter=Name%20eq%20%27Manager%20Virtual%20Network%20Interface%27"
ilorest login ilo-ip -u ilo-user -p password
ilorest rawget /redfish/v1/Managers/1/EthernetInterfaces/$Filter
ilorest logout
```
  
  {% /tab %}
{% tab label="Response" %}

```json Response
{
    "@odata.context": "/redfish/v1/$metadata#EthernetInterfaceCollection.EthernetInterfaceCollection",
    "@odata.etag": "W/\"02BD3E02\"",
    "@odata.id": "/redfish/v1/Managers/1/EthernetInterfaces/",
    "@odata.type": "#EthernetInterfaceCollection.EthernetInterfaceCollection",
    "Description": "Configuration of Manager Network Interfaces",
    "Name": "Manager Network Interfaces",
    "Members": [
        {
            "@odata.context": "/redfish/v1/$metadata#EthernetInterface.EthernetInterface",
            "@odata.id": "/redfish/v1/Managers/1/EthernetInterfaces/3/",
            "@odata.type": "#EthernetInterface.v1_4_1.EthernetInterface",
            "Id": "3",
            "Description": "Configuration of this Manager USB Ethernet Interface available for access from Host.",
            "IPv4Addresses": [
                {
                    "Address": "16.1.15.1",
                    "AddressOrigin": "DHCP",
                    "SubnetMask": "255.255.255.252"
                }
            ],
            "IPv4StaticAddresses": [],
            "IPv6AddressPolicyTable": [],
            "IPv6Addresses": [],
            "IPv6StaticAddresses": [],
            "IPv6StaticDefaultGateways": [],
            "InterfaceEnabled": true,
            "LinkStatus": "LinkUp",
            "Links": {
                "HostInterface": {
                    "@odata.id": "/redfish/v1/Managers/1/HostInterfaces/1/"
                }
            },
            "MACAddress": "0A:CA:FE:F0:0D:04",
            "Name": "Manager Virtual Network Interface",
            "NameServers": [],
            "Oem": {
                "Hpe": {
                    "@odata.context": "/redfish/v1/$metadata#HpeiLOEthernetNetworkInterface.HpeiLOEthernetNetworkInterface",
                    "@odata.type": "#HpeiLOEthernetNetworkInterface.v2_2_1.HpeiLOEthernetNetworkInterface",
                    "ConfigurationSettings": "Current",
                    "InterfaceType": "HostInterface",
                    "NICSupportsIPv6": false
                }
            },
            "PermanentMACAddress": "0A:CA:FE:F0:0D:04",
            "StaticNameServers": [],
            "Status": {
                "Health": "OK",
                "State": "Enabled"
            }
        }
    ],
    "Members@odata.count": 1
}
```
  
  {% /tab %}
  {% /tabs %}
## Using the Virtual NIC

When enabled in both the server operating system and in iLO, software running
in the host may access the iLO Web GUI or Redfish API
via this communication path. By default, the iLO vNIC IP address is `16.1.15.1/30`, and
the OS vNIC IP address is `16.1.15.2/30`.

Secure Shell (SSH) communications are also possible via vNIC when `SSH.ProtocolEnabled`
property is set to `true` in the `ManagerNetworkProtocol`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#oem.hpe.virtualnicenabled") %} subsystem {% /link-internal %}.

{% admonition type="success" name="TIP" %}
When vNIC is enabled, iLO becomes a DHCP server on the vNIC interface. Make sure that
the corresponding interface in the host is configured as a DHCP client.
{% /admonition %}

Redfish clients [authentication](/docs/concepts/redfishauthentication/#redfish-authentication-and-sessions)
(basic or session based) is always required to access iLO resources via vNIC, regardless the type
of user (privileged or standard) sending the Redfish requests and the
[security state](../securityservice/#ilo-security-state) of the iLO.

{% admonition type="success" name="TIP" %}
Read the
[transitioning to iLO 7](/docs/redfishservices/ilos/supplementdocuments/securityservice/#transitioning-to-hpe-ilo-7)
paragraph for information about the authentication of host applications like the
Agentless Management Service (AMS), iLOrest, iSUT or SUM.
{% /admonition %}
