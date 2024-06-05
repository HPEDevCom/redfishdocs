---
seo:
  title: Redfish data types and collections
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Redfish data types and collections

The Redfish RESTful API introduces, among other things two important concept
 discussed in this section: **Data types** and **Collections**.  

## Data types

Each Resource resource and property of the Redfish API belong to a
**data type** also called **resource type** or just **type**, that is
mentioned in the mandatory `@odata.type` property returned in HTTP responses.
Refer to the <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.6.0.pdf" target="_blank">
Redfish specification</a> for `@odata.type` detail.

Each data type is associated to a set of URIs sometimes referred as
**instances**. As an example the exhaustive list of the possible URIs of
the `EthernetInterface` standard data type is listed in
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0268_2021.3.pdf" target="_blank">paragraph 6.31</a>
of the DSP0268_2021.3 document. See first tabulation of the example below.

The use of the standard URI listings by Redfish clients, is explained
in paragraph 2.1 of the <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0268_2021.3.pdf" target="_blank">DSP268_2021.3</a>
document.

The first tabulation of the following example shows the exhaustive list
of the `EthernetInterface` URIs as they appear in the DSP0268\_2021.3 document.
The second tabulation lists the same URIs, implemented in an HPE iLO 6 as documented
in the
[Resource Definitions](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_network_resourcedefns{{process.env.LATEST_FW_VERSION}}/#ethernetinterface)
section.

```text Standard EthernetInterface URIs
/redfish/v1/Chassis/{ChassisId}/NetworkAdapters/{NetworkAdaptersId}/NetworkDeviceFunctions/{NetworkDeviceFunctionId}/EthernetInterfaces/{EthernetInterfaceId}
/redfish/v1/CompositionService/ResourceBlocks/{ResourceBlockId}/EthernetInterfaces/{EthernetInterfaceId}
/redfish/v1/CompositionService/ResourceBlocks/{ResourceBlockId}/Systems/{ComputerSystemId}/EthernetInterfaces/{EthernetInterfaceId}
/redfish/v1/Managers/{ManagerId}/EthernetInterfaces/{EthernetInterfaceId}
/redfish/v1/ResourceBlocks/{ResourceBlockId}/EthernetInterfaces/{EthernetInterfaceId}
/redfish/v1/ResourceBlocks/{ResourceBlockId}/Systems/{ComputerSystemId}/EthernetInterfaces/{EthernetInterfaceId}
/redfish/v1/Systems/{ComputerSystemId}/EthernetInterfaces/{EthernetInterfaceId}
```

```text iLO 6 documented EthernetInteface URIs
/redfish/v1/managers/{item}/ethernetinterfaces/{item}
/redfish/v1/systems/{item}/ethernetinterfaces/{item}
```

The following example uses the HPE
<a href="https://www.hpe.com/info/resttool/" target="_blank">iLOrest</a>
tool to selects all the `EthernetInterface` data types implemented
in a remote iLO 6 Redfish service and prints out the URIs (`@odata.id`)
and associated type (`@odata.type`) in the second tabulation.

:::info NOTE
You should note in the following example that both
the `Managers` and `Systems` Redfish subtrees hold Ethernet interfaces.
:::

```shell iLOrest query
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select EthernetInterface.v
ilorest select
ilorest  get "@odata.type" "@odata.id"
ilorest logout 
```

```shell iLOrest response output
Current selection: EthernetInterface.v1_4_1, EthernetInterface.v1_6_3

@odata.id=/redfish/v1/Managers/1/EthernetInterfaces/1/
@odata.type=#EthernetInterface.v1_4_1.EthernetInterface

@odata.id=/redfish/v1/Managers/1/EthernetInterfaces/3/
@odata.type=#EthernetInterface.v1_4_1.EthernetInterface

@odata.id=/redfish/v1/Managers/1/EthernetInterfaces/2/
@odata.type=#EthernetInterface.v1_4_1.EthernetInterface

@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/DE082000
@odata.type=#EthernetInterface.v1_6_3.EthernetInterface

@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/DE07A000
@odata.type=#EthernetInterface.v1_6_3.EthernetInterface

@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/DE082001
@odata.type=#EthernetInterface.v1_6_3.EthernetInterface

@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/DE07A001
@odata.type=#EthernetInterface.v1_6_3.EthernetInterface

```

The Redfish specification allows Redfish service providers to
implement their specific and added values OEM data types. The list
of HPE OEM data types implemented in iLO are described in the
[HPE Oem extensions](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/).

:::info NOTE
HPE iLO based servers prepend the "Hpe" string to the
HPE OEM resource types. See next example.
:::

```text Retrieve Oem/Hpe data types with iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest  types | awk '/Hpe/ && !/Collection/ {print $NF}'
ilorest logout
```

```text iLOrest output
HpeAutomaticCertEnrollment.v1_0_0
HpeBaseConfigs.v2_0_0
HpeBiosMapping.v2_0_0
HpeBundleUpdateReport.v1_0_0
HpeCertAuth.v1_1_0
HpeCertificate.v1_0_0
HpeComponent.v1_0_1
HpeComponentInstallSet.v1_1_0
HpeComponentUpdateTask.v1_2_0
HpeDirectoryTest.v1_0_0
HpeESKM.v2_0_0
HpeHttpsCert.v2_0_0
HpeKmsConfig.v1_0_0
HpePowerMeter.v2_0_1
HpeRemoteSupport.v2_6_0
HpeSecureEraseReportService.v1_0_0
HpeSecurityService.v2_3_1
HpeServerBootSettings.v2_0_0
HpeServerConfigLock.v1_0_0
HpeServerDevice.v2_1_0
HpeServerPCISlot.v2_1_1
HpeServerPciDevice.v2_0_0
HpeTlsConfig.v1_0_0
HpeUSBPort.v2_0_0
HpeiLOAccountCertificateMap.v1_0_1
HpeiLOActiveHealthSystem.v2_5_0
HpeiLOBackupRestoreService.v2_2_0
HpeiLODateTime.v2_0_0
HpeiLOEmbeddedMedia.v2_0_0
HpeiLOFederatedGroupCapping.v2_0_0
HpeiLOFederationGroup.v2_0_0
HpeiLOFederationPeers.v2_0_0
HpeiLOGUIService.v1_1_0
HpeiLOLicense.v2_3_0
HpeiLOSSO.v2_0_0
HpeiLOSecurityDashboard.v1_0_0
HpeiLOSecurityParam.v1_1_0
HpeiLOSnmpService.v2_3_0
HpeiSCSISoftwareInitiator.v2_0_0
```

## Resource Collections

The <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0268_2021.3.pdf" target="_blank">
Redfish Data Model specification</a> provides the following definition
for resource collections. The term **instances** is a synonym of **URIs**

_A resource collection is a core concept in Redfish. A resource collection
is a group of like resources where the number of instances in the group
can shrink or grow depending on the scope of the Redfish service or the
configuration of the devices being managed. Every resource collection
contains the same set of supported properties, and all contain Collection
in the name of their schema. Every resource linked in the Members array
within a resource collection will have the same resource type with the
same major version, but can vary in minor or errata schema versions._

As per the <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.6.0.pdf" target="_blank"> Redfish Specification</a>:

_The value of the type property (`@data.type`) for
resource collections shall be in the format:_

_`#<ResourceType>.<ResourceType>` where `ResourceType` is
the resource type in the Redfish schema that defines the resource collection._

_An example of a resource collection type value is
`#ComputerSystemCollection.ComputerSystemCollection` for the
`ComputerSystemCollection` resource collection._

Collections may be GET-only and may not accept members to be added
to or removed. An examples of a GET-only collection is the Systems collection
at `/redfish/v1/Systems/`. In a typical `ComputerSystemCollection` describing
physical hardware, it wouldn't make sense to be able to create or remove
members using POST or DELETE.

Other collections may be editable. Examples of these might be the
`ManagerAccountCollection` at `/redfish/v1/accountservice/accounts`.
The API supports the addition or removal of manager user accounts.
To add a new member to an editable collection, perform an HTTP POST
to the collection resource with a body consisting of the required JSON
properties needed to create a new member (this does not necessarily
require you to POST every property because many may take a unique
service-assigned value or take a default value.)

The following example retrieves the `ComputerSystem` collection of
an iLO based server. It shows the body of the response and the
allowed operations on that collection. Note the `Members@odata.count`
key containing the number of elements of the `Members` array.

The the elements of the `Members`  array consists of URI links
(`@odata.id`) to the members of the collection.

```text GET request
GET https://{iLO}/redfish/v1/Systems/
```

```json response body
{
    "@odata.id": "/redfish/v1/systems/",
    "@odata.context": "/redfish/v1/$metadata/",
    "@odata.type": "#ComputerSystemCollection.ComputerSystemCollection",
    "Members@odata.count": 1,
    "Members": [
        {
            "@odata.id": "/redfish/v1/systems/1/"
        }
    ]
}
```

```text Allow response header
Allow: GET, HEAD
```

The exhaustive list of standard resource collections is present in the
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0268_2021.3.pdf" target="_blank"> Redfish data Model specification</a>.

The Redfish specification allows Redfish services to complement the
data model with Oem specific extensions. HPE prefixes its OEM
collection extensions with the "Hpe" string.

The following example retrieves HPE Oem extensions of an iLO 6 based
server using the <a href="https://www.hpe.com/info/resttool" target="_blank">iLOrest tool</a>.

```bash iLOrest request
ilorest login $ilo_ip -u $ilo-user -p $password
ilorest types | grep 'Hpe.*Collection'
ilorest logout
```

```text Output
HpeBundleUpdateReportCollection
HpeCertificateCollection
HpeComponentCollection
HpeComponentInstallSetCollection
HpeComponentUpdateTaskQueueCollection
HpeInvalidImageCollection
HpeMaintenanceWindowCollection
HpeSNMPAlertDestinationCollection
HpeSNMPUsersCollection
HpeSecureEraseReportCollection
HpeServerDeviceCollection
HpeServerPCISlotCollection
HpeServerPciDeviceCollection
HpeUSBDevicesCollection
HpeUSBPortsCollection
HpeiLOAccountCertificateMapCollection
HpeiLOBackupFileCollection
HpeiLOFederationGroupCollection
HpeiLOFederationPeersCollection
HpeiLOLicenseCollection
HpeiLOSecurityParamCollection
```
