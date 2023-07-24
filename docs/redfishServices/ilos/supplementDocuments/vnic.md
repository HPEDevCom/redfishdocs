---
seo:
  title: Managing the iLO Redfish Host Interface ("Virtual NIC")
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# The iLO Redfish Host Interface ("Virtual NIC")

iLO implements the <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0270_1.0.0.pdf" target="_blank">Redfish Host Interface</a>
specification to access iLO's HTTPS resources (including the Redfish API and the Web GUI) from the host. This interface (aka Virtual NIC) is disabled by default.

When accessing iLO from the operating system through the virtual network interface, authentication is enforced even if you logged as a privileged user in the server operating system.

## Managing the Virtual NIC

The status of the iLO Virtual NIC can be retrieved from  Hpe Oem extension of `Manager` resource:

```text GET VNIC status
GET /redfish/v1/Managers/1/?$select=Oem/Hpe/VirtualNICEnabled
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#Manager.Manager",
    "@odata.etag": "W/\"FDCF48B4\"",
    "@odata.id": "/redfish/v1/Managers/1/",
    "@odata.type": "#Manager.v1_5_1.Manager",
    "Oem": {
        "Hpe": {
            "VirtualNICEnabled": false
        }
    }
}
```

The Virtual NIC may be enabled in iLO either though the iLO Web GUI or by a Redfish operation. An iLO reset is required for this change to take effect.

```text PATCH
PATCH /redfish/v1/Managers/{managerId}/
```

```json Request body
{
    "Oem": {
        "Hpe": {
            "VirtualNICEnabled": true
        }
    }
}
```

```json Response body
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.15.ResetRequired"
            }
        ]
    }
}
```

:::success TIP
Read the <a href="https://www.hpe.com/support/ilo6" target="_blank">User Guide</a> to enable the Virtual NIC in the server operating system.
:::

## Using the Virtual NIC

When enabled in both the server operating system and in iLO, software running on the server operating system may access the iLO Web GUI or Redfish API using IP address `16.1.15.1`. Normal authentication is required.

The configuration of the iLO virtual NIC can be retrieved with GET operation from the `EthernetInterfaceCollection` resource type:

```text GET VNIC configuration
GET /redfish/v1/Managers/1/EthernetInterfaces/?$filter=Name eq 'Manager Virtual Network Interface'
```

```json
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

:::info NOTE
The Virtual NIC does NOT act as a passthrough to traffic to the iLO physical network connection (iLO dedicated or shared network port). It is a separate network connection into iLO's resources.
:::

## Disabling the Virtual NIC

The Virtual NIC may be disabled either though the Web GUI or by a Redfish operation. An iLO reset is required for this change to take effect.

```text PATCH
PATCH /redfish/v1/Managers/{managerId}/
```

```json Request body
{
    "Oem": {
        "Hpe": {
            "VirtualNICEnabled": false
        }
    }
}
```

```json Response body
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.15.ResetRequired"
            }
        ]
    }
}
```
