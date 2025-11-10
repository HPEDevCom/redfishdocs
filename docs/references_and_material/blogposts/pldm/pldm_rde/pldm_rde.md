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
  title: Overview of the Platform Level Data Model for Redfish Device Enablement standard
---

# Overview of the Platform Level Data Model for Redfish Device Enablement standard

{% img
   alt="François Donzé's profile photo"
   src="../../fdz-photoprofile.png"
   style={"borderRadius": "50px", "boxShadow": "0 2px 12px rgba(0,0,0,0.25)"}
/%}
<span style="font-size: larger;">François Donzé</span> - Technical consultant, HPE

May 2022<br>
Updates: May 2024, September 2025

## Introduction

In 2019, the <a href="https://dmtf.org" target="_blank">Distributed Management Task Force</a> (DMTF) published the first version of the
Platform Level Data Model for Redfish Device Enablement
(<a href="https://www.dmtf.org/dsp/DSP0218" target="_blank">PLDM for RDE</a>) standard.
This Redfish standard extension started to be implemented in HPE iLO 5 based servers (Gen10 and Gen10 Plus) as well as in several storage controller
(i.e. HPE Smart Array) and network adapter option cards.

This blog post positions the PLDM for RDE standard within the Redfish service, explains its benefits and provides practical configuration examples.

## Introduction to the Platform Level Data Model protocol suite

The DMTF PLDM protocol suite is composed of several
<a href="https://www.dmtf.org/standards/pmci" target="_blank">documents</a>,
and defines its base specification in the
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0240_1.1.0.pdf" target="_blank">DSP0240</a> document.
In the introductory paragraph, you can read:

"*PLDM is designed to be an effective interface and data model that provides efficient access to low-level platform inventory, monitoring, control, event, and data/parameters transfer functions. For example, temperature, voltage, or fan sensors can have a PLDM representation that can be used to monitor and control the platform using a set of PLDM messages. PLDM defines data representations and commands that abstract the platform management hardware.*"

If you compare Redfish and PLDM, you could say that Redfish defines server modeling and management communications from a remote location, while PLDM defines server component modeling and communications between those internal components.

The data modeling and the communication between Management Controllers (MC) and components, like fans or sensors, is simpler when compared to complex devices,
like option cards. To address component specificities and complexity, PLDM introduces generic types in which server components can be placed. 
As an example, storage and network controllers, also called "devices" in PLDM terminology, are part of PLDM type six. The PLDM for Redfish Device Enablement standard is published in the
<a href="https://www.dmtf.org/dsp/DSP0218" target="_blank">DSP0218</a> document.

 In addition, the <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0240_1.1.0.pdf" target="_blank">PLDM base</a>
 specification does not mandate any transport protocol to transfer messages from one component to another.
 Theoretically, PLDM messages can be transferred by any transport protocol, including the
 <a href="https://www.dmtf.org/dsp/DSP0239" target="_blank">Management Component Transport Protocol</a>
 (MCTP). Hence, a specific document (<a href="https://www.dmtf.org/dsp/DSP0241" target="_blank">DSP0241</a>)
 had to be created to define the binding of PLDM messages over MCTP to complete the protocol suite.

## Operational model without PLDM for RDE

Generally speaking, most of today's servers are architected around one or more management controllers (MC).
The majority of the server components are tightly coupled with the MC that has a total control of them in terms of monitoring and configuration.
Typical examples are temperature sensors or power supplies. Other more complex components, like option cards (also called "external provider devices"),
are loosely coupled with the MC.

Without the implementation of the PLDM for RDE standard, the MC (iLO) has a partial knowledge of external provider device properties and capabilities. This knowledge has been hard-coded in the Redfish service of the iLO firmware. As a consequence, Redfish clients can only get and set the properties referenced in the MC. For an exhaustive management of an external provider device, specific applications like the HPE Smart Storage Administrator (SSA) or the HPE MegaRaid Storage Administrator (MRSA) are needed.

This paradigm (implementation of device properties in the iLO firmware) generates a lock-step dependency between the iLO firmware and the device firmware; an update of the device firmware may lead to inaccurate iLO responses or errors if the iLO is not updated with firmware embedding the new or modified device features.

Figure 1 below shows an iLO based server with two network adapters and one storage adapter.
The iLO firmware is in sync with the storage device and one network adapter.
This same level of firmware is represented with a green "F".
The second network adapter firmware is not in sync with the iLO firmware and is represented with a red "F".
A red cross between the iLO and the un-synced firmware represents potential communication problems.

In addition, this picture mentions the
<a href="https://www.intel.com/content/www/us/en/docs/programmable/683126/21-2/dma-master-interface.html" target="_blank">Bus Master Interface Command</a>
(BMIC) and the Discovery and Configuration via iLO (DCi) protocols. DCi is an HPE proprietary and patented protocol.

Using proprietary protocols between the MC and an external provider device require their implementation in both the MC and the external provider device.
This is a constraint imposed to the external providers who have to implement all the specific protocols of all the computer makers they want to support.

Moreover, device configuration is performed in two steps as explained in this
<a href="https://developer.hpe.com/blog/storage-management-with-redfish/" target="_blank">blog post</a>:

1. The MC stores the modifications in a dedicated location.
2. The modifications are uploaded to the device during the next server reboot.

The reboot requirement mentioned in the second bullet is another drawback generated by the lack of PLDM implementation.

![Figure 1: Operational model without PLDM for RDE](figures/1-withoutpldmrde.png "Figure 1: Operational model without PLDM for RDE")

<i>Figure 1: Operational model without PLDM for RDE</i>

<br>

As a summary, the operational model without PLDM for RDE introduces the following problems:

- Firmware lock-step dependency between iLO and devices
- Partial knowledge of device properties implemented iLO firmware
- Use of proprietary communication protocols between iLO and devices
- Reboot required to load new device configuration settings

## Operational model with PLDM for RDE

The implementation of PLDM for RDE standard, in both iLO and devices, changes the iLO role from "active" to "pass-through". In this configuration, the iLO receives HTTP requests from Redfish clients and translates them into a set of RDE requests to the device. When the PLDM dialog between the iLO and the device is over, the iLO sends back a final HTTP response to the Redfish client (See picture below).

![Figure 2: Operational model with PLDM for RDE](figures/2-withpldmrde.png "Figure 2: Operational model with PLDM for RDE")

<i>Figure 2: Operational model with PLDM for RDE</i>

<br>

In this model, the management controller and device firmware don't need to be aligned because the MC does not contain any device properties.
It contains only the necessary information to translate the Redfish client requests into PLDM for RDE messages.

As a result, if all the computer makers implement the PLDM for RDE protocol suite in their Redfish service, the number of communication protocols to be implemented and maintained by the device providers is reduced to one.

Lastly, PLDM for RDE device modifications do not require a reboot of the server to become effective in the device. However, a reboot may be required by the operating system or by applications.

## HPE implementation of PLDM for RDE

On the server side, the implementation of
<a href="/docs/redfishservices/ilos/supplementdocuments/rdesupport/#redfish-device-enablement-rde-support" target="_blank">PLDM for RDE</a>
started in iLO 5 firmware version 2.33 and in iLO 6 version 1.05.
Newer firmware releases implement more and more PLDM related features that can be leveraged by devices providing their support of this standard.
As an example, Redfish clients connected to an iLO 5 version 2.65 can perform read and write operations on logical drives (LD) hosted by
<a href="https://www.hpe.com/psnow/doc/a00047736enw.html?jumpid=in_pdp-psnow-qs" target="_blank">HPE SR Smart Arrays</a>
running firmware version 5.00 and above.

This statement is clearly mentioned in the `readme.txt` file embedded in the `ilo5_265.fwpkg` firmware package. 
ou can use the `unzip` utility to extract this file from the package as shown in the next picture.

![Figure 3: RDE support in iLO 5 firmware version 2.65](figures/3-rdesupportinfw265.png "Figure 3: RDE support in iLO 5 firmware version 2.65")

<i>Figure 3: RDE support in iLO 5 firmware version 2.65</i>

<br>

### Device naming convention

By design or for other reasons, some devices are able to support new discovery and configuration protocols like PLDM for RDE,
and some are not. In this context (device discovery and configuration),
HPE distinguishes three types of devices with an associated naming convention sometimes called "hash ID" and part of the URIs related to those devices.

1. PLDM for RDE capable devices: `/DExxxxxx` or `/DE`. Refer to the next paragraphs for examples.
2. DCi capable devices: `/DCxxxxxx` or `/DC`. As mentioned earlier in this blog post,
   those devices support the DCi HPE proprietary protocol. Some fibre channel host bus adapters like the FC HBA SN1610E or the 631FLR-SFP 28 network adapter are part of this category.
3. Non RDE, non DCi capable devices: `/DAxxxxxx` or `/DA`. Such devices are not configurable and use the
   <a href="https://www.dmtf.org/standards/smbios" target="_blank">SMBIOS protocol</a>
   to communicate with the BIOS, the operating system or the management controller.
   Direct attached NVMe drives, and their embedded controller, I350 or BCM 5719 network adapters are examples of such devices.

{% admonition type="info" name="Note" %}
The above notation is relevant at the time of the writing of this blog post. Hash IDs may change over time. Such modification will be reflected in the
<a href="/docs/redfishservices/" target="_blank">Redfish services section</a>
of the HPE server management portal.
{% /admonition %}

### Storage controllers

The Enhancements paragraph</a>
of HPE Smart Arrays version 5.00 mentions several new PLDM and DMTF features for this version (Figure 4).

![Figure 4: PLDM Enhancements](figures/4-pldmenhancements.png "Figure 4: PLDM Enhancements")

<i>Figure 4: PLDM Enhancements</i>

<br>

MegaRAID (MR) storage controllers support read and write operations since version
<a href="https://support.hpe.com/connect/s/softwaredetails?language=en_US&softwareId=MTX_7770514895d94ff4b1fcb86c5b&tab=Enhancements" target="_blank">52.24.3-4948</a>.

As mentioned in the previous paragraph, SR and MR devices supporting PLDM for RDE can be reached via an
URI of the form: `/redfish/v1/systems/1/Storage/DExxxxxx`.
A GET request toward this URI returns links to controllers, drives and volumes property end points as shown in the next picture.

![Figure 5: RDE storage end point](figures/5-rdestorageendpoint.png "Figure 5: RDE storage end point")

<i>Figure 5: RDE storage end point</i>

<br>

If you want to create a logical drive (aka volume), you can POST a request toward `{{iloURI}}/redfish/v1/Systems/1/Storage/DE07C000/Volumes` with a payload similar to:

```json
{
    "RAIDType": "RAID1",
    "DisplayName": "Raid1-1",
    "ReadCachePolicy": "ReadAhead",
    "VolumeUsage": "Data",
    "InitializeMethod": "Background",
    "Links": {
        "Drives": [
            {
                "@odata.id": "/redfish/v1/Systems/1/Storage/DE07C000/Drives/0"
            },
            {
                "@odata.id": "/redfish/v1/Systems/1/Storage/DE07C000/Drives/1"
            }
        ]
    }
}
```

The request will be transferred to the device and analyzed. If the device can process it, you will receive a `201 Created` HTTP response code.
The just-created logical drive can be used immediately by the operating system without any system reboot.
You may have to ask the OS to re-scan storage devices to discover this newly created LD.

The deletion of a RDE Logical Drive is straight forward; you just have to send a DELETE request toward the LD URI:

```Bash
curl --request DELETE "$iloURI/redfish/v1/Systems/1/Storage/DE07C000/Volumes/1"
```

{% admonition type="info" name="Notes" %}

- For backward compatibility concerning HPE Smart Array SR devices, HPE iLO 5 based servers (Gen10 and Gen10 Plus) offer the possibility to manage those devices using both `SmartStorageConfig` and `Storage` data types. However, always stick to a single management data type. Mixing those data types may lead to hazardous results.
- HPE iLO 6 based servers (Gen11) don't implement the `SmartStorageConfig` OEM data type. The `Storage` data type and its sub-resources (Volume, Drive) is the only implemented type.
- Refer to the <a href="https://www.hpe.com/psnow/doc/a50006146enw?from=app&section=search&isFutureVersion=true" target="_blank">HPE Storage Controllers: Management Overview</a>
  document for more information.

{% /admonition %}

### Network adapters

Several network adapter suppliers implement PLDM for RDE in their devices. The
<a href="https://www.hpe.com/psnow/doc/a00073559enw.html?jumpid=in_pdp-psnow-qs" target="_blank">Intel E810 XXVDA2 Network Adapter</a>
support this technology in its firmware version 3.10. This firmware is packaged in a file called `HPE_E810_XXVDA2_SD_3p10_PLDMoMCTP_8000AD4A.fwpkg`
mentioning explicitly PLDM over MCTP, meaning that PLDM messages between the management controller and the device are transported
by the Management Component Transport Protocol (MCTP) mentioned above.

When this firmware is deployed, its Redfish URI endpoint looks like `/redfish/v1/Chassis/1/NetworkAdapters/DExxxxxx`.
Figure 6 retrieves three properties (URI, Name and Settings URI) from the `NetworkAdapter.` subsystem of a server containing two network adapters:
an HPE 631FLR-SFP28 and an Intel E810. The HPE 631FLR-SFP28 adapter supports only the DCi protocol. Hence, its hash ID is of the form `/DCxxxxxx`.

{% admonition type="info" name="Notes" %}

- Modifications of DCi capable devices are performed in the dedicated `Settings` area.
  During the next reboot, the content of this area will be analyzed and potentially transferred to the device if valid.
- RDE capable devices do not contain any settings area because modifications are transferred to the device and analyzed in real time by the device.
  A server reboot may be required to take those modification into account.
- Refer to this
  <a href="https://developer.hpe.com/blog/setting-bios-and-storage-controller-properties-with-redfish/" target="_blank">blog post</a>
  for more information on the `Settings` area and the `@Redfish.Settings` object.

{% /admonition %}

![Figure 6: Retrieving RDE capable network adapter properties with iLOrest](figures/6-networkadapters.png "Figure 6: Retrieving RDE capable network adapter properties with iLOrest")

<i>Figure 6: Retrieving RDE capable network adapter properties with iLOrest</i>

<br>

The following figure shows a real-time property modification on port 0 of an RDE capable Intel E810 network adapter, using
<a href="https://github.com/HewlettPackard/python-redfish-utility/releases/latest" target="_blank">iLOrest</a> version 3.5.0.0.

The first instruction explicitly selects the `port.v1_3_1` schema that describes this adapter.
Using an `ilorest select port.` command would also select other schema versions (i.e. schemas related to non RDE adapters).
If several data types are selected, the filtering of properties is harder. Refer to the next paragraph for more info concerning the coexistence of multiple intra-server communication protocols on the Redfish data model.

The second and third commands retrieve the `FlowControlConfiguration` property of port 0, and set it to a different value. 
The last instruction once again, retrieves the value of this property to show that it has changed without any reboot.

{% admonition type="info" name="Note" %}
No `commit` instruction was needed with this version of iLOrest to modify this property. This may be different with later versions.
{% /admonition %}

![Figure 7: Set port property in RDE network adapter](figures/7-setrdenetworkadapterproperty.png "Figure 7: Set port property in RDE network adapter")

<i>Figure 7: Set port property in RDE network adapter</i>

<br>

If you want to perform the same configuration using another Redfish client, you can send a PATCH request toward `{{iloURI}}/redfish/v1/Chassis/1/NetworkAdapters/DE081000/Ports/0` with the following body:

```json
{
    "Ethernet": {
        "FlowControlConfiguration": "TX"
    }
}
```

{% admonition type="info" name="Note" %}
HPE Gen11 servers (iLO 6) only implement the standard `NetworkAdapter` schema. The proprietary `HpeBaseNetworkAdapter` schema is deprecated.
The mapping table between those two schemas is available in the
<a href="/docs/redfishservices/ilos/ilo6/ilo6_adaptation/#basenetworkadapters-deprecated" target="_blank">server management portal</a>.
{% /admonition %}

### Consequences of intra-server multi protocol coexistence

The coexistence of several discovery and configuration protocols within servers has some consequences.
Redfish client requests sent to `/DA` and `/DC` devices are answered by the iLO.
These responses are based upon a schema version mentioned in the `@odata.type` required property. They may contain OEM extension blocks located under an `Oem/Hpe` sub-tree because the schema HPE proprietary.

Requests sent to RDE capable devices (`/DE`) are answered by the device, usually not manufactured by HPE.
The schema version implemented in the device may be different than the version of the same schema implemented in the HPE iLO. Moreover, if the response contains OEM extensions, they are are located in an `Oem/<manaufacturer>` sub-tree, with `<manufacturer>` different from Hpe.

In Figure 8 below, the response from the `/DE` device (HPE SR308i=o Gen11) is modeled by storage schema version 1.14.0. The response from the `/DA` (NVMe drive) is modeled by the storage schema version 1.12.0. Those two devices are part of the same server.

![Figure 8: Schema version comparison between DE and DA devices within the same server](figures/8-de_da_responsecompararison.png "Figure 8: Schema version comparison between DE and DA devices within the same server")

<i>Figure 8: Schema version comparison between DE and DA devices within a single server</i>

<br>

## Conclusion

By leveraging several standards published before the Redfish standard (PLDM base specification, MCTP),
the DMTF substantially enhanced the flexibility and ease of use of server management with the PLDM for RDE standard.
HPE adopted it very early in its iLO 5 based servers as well as most (if not all) of its external device providers.
As a result, HPE customers benefit from this partnership and can save precious time during their management tasks.

Don't forget to check out some of my other
<a href="https://developer.hpe.com/search/?term=donze" target="_blank">blog posts</a>
on the HPE Developer portal to learn more about Redfish tips and tricks.
