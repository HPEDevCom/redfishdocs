---
markdown:
  toc:
    hide: false
    depth: 2
  lastUpdateBlock:
    hide: true
breadcrumbs:
  hide: false
seo:
  title: One-button secure system erase
---

## Secure Erase

{% admonition type="info" name="NOTE" %}

It is possible that some properties or resources
described in this section are not implemented in iLO 4 and ilo 5.

{% /admonition %}

{% admonition type="warning" name="Warning" %}
Secure erase should be used with extreme caution,
and only when a system is being decommissioned.
{% /admonition %}

The secure erase process resets iLO and deletes all licenses stored there,
resets BIOS settings, and deletes all
[AHS](/docs/redfishservices/ilos/supplementdocuments/logservices/#the-active-health-system-log)
and warranty data stored on the system.
The secure erase process also erases supported non-volatile storage data and
deletes any deployment settings profiles. iLO reboots multiple times after
the process is initiated.

{% admonition type="warning" name="Warning" %}
Disconnect any FCoE, iSCSI, external SAS, and Fibre Channel
storage before using secure erase.
{% /admonition %}

{% admonition type="info" name="NOTE" %}
Securely erasing the server can take up to a day to complete.
{% /admonition %}

Secure erase erases supported non-volatile storage data and returns
the server to the manufacturing default state.
The feature complies with specification NIST SP 800-88 Revision 1,
_Guidelines for Media Sanitization_. For more information about
NIST SP 800-88 consult this
<a href="https://nvlpubs.nist.gov/nistpubs/specialpublications/nist.sp.800-88r1.pdf"
target="_blank"> document</a>.

Section 2.5 of the specification describes the level of sanitization.
The appendix recommends minimum sanitization levels for media.
Secure erase implements the NIST SP 800-88 Revision 1
Sanitization Recommendations for Purging user data and returns
the server and supported components to the default state.
This feature automates many of the tasks you follow in
the _Statement of Volatility_ document for a server.

To view what was erased successfully, see
[View secure erase report](#view-secure-erase-report).
The process can take up to a day to fully erase and reset all user data.
When you activate secure erase, iLO does not allow firmware update or
reset operations.

{% admonition type="warning" name="Warning" %}
Do not perform any iLO configuration changes until this process is completed.
{% /admonition %}

## Secure erase access methods

You can initiate the secure erase process from the following products:

* Intelligent Provisioning 3.30 or later
* The iLO RESTful API

## Prerequisites

* User account must have all iLO permissions, including
  `SystemRecoveryConfigPriv`.
* iLO Advanced license.
* Set the iLO security setting on the system maintenance
  switch to the OFF position.
* Disconnect any FCoE, iSCSI, external SAS, and Fibre Channel
  storage before using secure erase.
* Disable **Server Configuration Lock**. For instructions, see the
  <a href="hhttp://www.hpe.com/support/UEFIGen11-UG-en" target="_blank">
  UEFI System Utilities User Guide for HPE ProLiant Gen10 Servers
  and HPE Synergy</a>.
* Disable **Smart Storage Encryption**.
  For instructions, see the "Clearing the encryption configuration"
  section in the
  _HPE Smart Array SR Secure Encryption Installation and User Guide_.
* For c-Class and Synergy users: Remove HPE OneView or
  Virtual Connect profiles assigned to the system.

## Process flow

1. User initiates secure erase.
2. Upon reboot, BIOS erases configuration, system time,
   TPM configuration and user data (drives and persistent memory).
   The system powers off after completion.
3. iLO then erases key NVRAM and NAND data, and then automatically resets.

### Initiating secure erase through Redfish

To initiate secure erase, perform a
`POST` on
`/redfish/v1/Systems/<index>/Actions/Oem/Hpe/HpeComputerSystemExt.SecureSystemErase/`
.

The payload for this POST includes two properties:

| Property | Type | Description |
| --- | --- | --- |
| SystemRomAndiLOErase | Boolean | Reset the system BIOS settings and iLO to manufacturing defaults. It also erases the Active Health System ([AHS](/docs/redfishservices/ilos/supplementdocuments/logservices/#the-active-health-system-log)) user data in the NAND. |
| UserDataErase | Boolean | Erase all the user data on the system including TPMs, persistent memory devices, storage controller configurations, RAID settings, and data from the hard drives attached to the system. USB and other removable media will be excluded. |

{% admonition type="info" name="NOTE" %}
The POST operation payload requires both the
`SystemRomAndiLOErase` and `UserDataErase`
parameters to be set to `true` to initiate the secure erase process.
{% /admonition %}

{% admonition type="warning" name="Warning" %}
Once you initiate this process, it cannot be undone.
{% /admonition %}

  {% tabs %}
{% tab label="POST target" %}

```text POST target
POST /redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.SecureSystemErase/
```
  
  {% /tab %}
{% tab label="Body" %}

```json Body
{
    "SystemROMAndiLOErase" : true,
    "UserDataErase": true
}
```
  
  {% /tab %}
  {% /tabs %}
If successful, the body of the response contains a message asking for a
system reset.

  {% tabs %}
{% tab label="JSON response body" %}

```json JSON response body
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.7.SystemResetRequired"
            }
        ],
    }
}
```
  
  {% /tab %}
  {% /tabs %}
The Redfish client must then initiate a server reset using the
`ComputerSystem.Reset` action resource.

  {% tabs %}
{% tab label="Computer system reset action" %}

```text Computer system reset action
POST /redfish/v1/Systems/{id}/Actions/ComputerSystem.Reset
```
  
  {% /tab %}
{% tab label="Body" %}

```json Body
{
    "ResetType": "ForceRestart"
}
```
  
  {% /tab %}
  {% /tabs %}
At this point the UEFI BIOS will begin erasing configuration information.

### Monitor status of secure erase

Once the secure erase is initiated, perform `GET` on
`/redfish/v1/Systems/1/`. This resource includes an object `Oem.Hpe`
which contains the status value properties for the secure erase
previously initiated. This includes the following properties:

| Property | Type | Description |
| --- | --- | --- |
|UserDataEraseStatus | `Status` (Enum) | Reports the overall user data erase status|
|UserDataEraseComponentStatus.{ComponentName} | `Status` (Enum) | Indicates the erase status of the individual components|
|ElapsedEraseTimeInMinutes | Integer | Reports the time elapsed since the erase started|
|EstimatedEraseTimeInMinutes | Integer | Reports the approximate time (in minutes) for the overall erase process|
|The `Status` enum takes the following values - `Idle`, `Initiated`, `InProgress`, `CompletedWithSuccess`, `CompletedWithErrors`, `Failed`|

### View secure erase report

The client must then initiate a server reset using the Reset action
in the ComputerSystem resource.

To view the secure erase report for each of the individual drives or
disks installed, perform `GET` on
`/redfish/v1/sytems/1/Oem/Hpe/EraseReport/{reportId}`.

  {% tabs %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --location --include  \
     --user ilo-user:<password>       \
     https://{iLO}/redfish/v1/systems/1/Oem/Hpe/EraseReport/2
```
  
  {% /tab %}
{% tab label="Body response" %}

```json Body response
{
    "ResetType"        : "ForceRestart",
    "DeviceType"       : "NVMeDrive",
    "DeviceIdentifier" : "NVMe M.2 Drive Slot 1 Bay 1",
    "SerialNumber"     : "<serialNumber>",
    "EraseStatus"      : "CompletedWithSuccess",
    "EraseType"        : "PURGE",
    "StartTime"        : "2019-05-30T08:40:13Z",
    "EndTime"          : "2019-05-30T08:40:13Z"
}
```
  
  {% /tab %}
  {% /tabs %}
## Impacts to the server after secure erase completes

The server will need to be re-provisioned to be used after this operation.

* All data on impacted storage drives and persistent memory will be
  erased and is not recoverable.
  * All RAID settings, disk partitions and OS installations will be lost.

* BIOS and iLO settings will be reset to defaults
  * iLO network and other settings will need to be reconfigured.
  * iLO Language Pack will be removed and iLO will respond in English only.
  * iLO license reverts to "Standard".
  * The System Recovery Set will need to be recreated.
  * iLO user accounts will be removed and will revert to the default factory
    Administrator account and password.
  * Active Health System, Integrated Management Log, and iLO Event
    Logs will be cleared.
  * BIOS and SmartStorage Redfish API data will be removed and
    recreated on the next boot.
  * Secure Boot will be disabled and any enrolled certificates will
    be removed (other than the factory installed certificates).
  * Boot options and BIOS User Defined Defaults are removed.
  * Passwords, pass-phrases and/or encryption keys
    stored in the TPM or BIOS will be removed.
  * Date, time, DST, and time zone will be reset.
  * System will boot the most recent BIOS revision flashed.
* Intelligent Provisioning will not boot and will need to be reinstalled.

## Troubleshooting

In some situations the secure erase function may return an
HTTP 500 Internal Server Error.

  {% tabs %}
{% tab label="Response code" %}

```text Response code
HTTP 500 Internal Server Error
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
                "MessageId": "Base.1.0.InternalError"
            }
        ],
    }
}
```
  
  {% /tab %}
  {% /tabs %}
In the event of this error:

1. Check if the installed BIOS firmware supports secure erase.
{% admonition type="info" name="NOTE" %}
This feature is supported only on HPE ProLiant Gen11
servers that have been updated with SPP version 2019.03.0 or later.
{% /admonition %}
2. If the system is already updated with the correct BIOS
   firmware version, then reboot the server.
   Once the system booted, execute the secure erase again
   using POST action URI.

For more troubleshooting tips and secure erase FAQ,
please refer to the
_"Intelligent Provisioning 4.0 User Guide for HPE ProLiant Gen11 Servers
and HPE Synergy"_
<a href="http://www.hpe.com/support/IPGen11-UG-en"
target="_blank"> document </a>.
