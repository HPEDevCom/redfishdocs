---
seo:
  title: Simple Network Management Protocol
toc:
  enable: true
  maxDepth: 3
disableLastModified: true
---

# Simple Network Management Protocol

:::info NOTE
It is possible that some properties or resources described in this section are not implemented in iLO 4 and ilo 5.
:::

HPE iLO supports the Simple Network Management Protocol (SNMP). SNMP traps are generated by Redfish events posted in the iLO Integrated Management Logs (IML). iLO SNMP Object Identifiers (OIDs) are defined in the HPE Systems Insight Manager (<a href="http://hpe.com/info/sim" target="_blank">SIM</a>) MIB update kit. To cross reference an SNMP trap with REST alerts information, see the REST alerts table in the <a href="https://www.hpe.com/support/ilo6" target="_blank"> iLO user guide</a>.

:::success TIP
If you make a mistake in the following iLOrest examples, you can always delete property changes in the cache, by reloading the a fresh schema/data-type (`ilorest select Schema. --refresh` ):

```shell iLOrest
ilorest select Schema.
ilorest set Property="Bad Value"
ilorest select Schema. --refresh
```

:::

## SNMP enablement

SNMP enablement is performed by setting the `SNMP/ProtocolEnabled` property to `true`  under the Redfish standard `ManagerNetworkProtocol` [URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_manager_resourcedefns{{process.env.LATEST_FW_VERSION}}/#managernetworkprotocol).

```text Generic PATCH request
PATCH /redfish/v1/Managers/1/NetworkProtocol
```

```json Body request
{
    "SNMP": {
        "ProtocolEnabled": true
    }
}
```

```shell iLOrest (verbose mode)
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select ManagerNetworkProtocol
ilorest set SNMP/ProtocolEnabled=True --commit
ilorest logout
```

```text iLOrest response
Selected option(s): #ManagerNetworkProtocol.v1_0_0.ManagerNetworkProtocol
Added the following patch:
{
  "SNMP/ProtocolEnabled": true
}
Committing changes...
Changes are being made to path: /redfish/v1/Managers/1/NetworkProtocol/

HTTP Response Code: [200]
MessageId: iLO.2.18.ResetRequired
Description: The operation completed successfully.
Message: The operation completed successfully.
Resolution:
ILOREST return code: 0
```

### SNMPv1 enablement

SNMPv1 is enabled when the `SNMPv1Enabled` key is set to `true`, under the `/redfish/v1/Managers/1/SnmpService` URI.

:::info NOTE
An iLO reset is required when a PATCH request is performed on that property.
:::

```text Generic PATCH request
PATCH /redfish/v1/Managers/1/SnmpService
```

```json Body
{
    "SNMPv1Enabled": true,
    "SNMPv1RequestsEnabled" : true,
    "SNMPv1TrapEnabled" : true

}
```

```shell iLOrest (verbose)
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest set SNMPv1Enabled=False SNMPv1RequestsEnabled=False SNMPv1TrapEnabled=False
ilorest status
ilorest -vv --commit 
ilorest iloreset 

```

```text iLOrest response
HTTP Response Code: [200]
MessageId: Base.1.4.Success
Description: The operation completed successfully.
Message: The operation completed successfully.
Resolution:
ILOREST return code: 0
```

## SNMP configuration

SNMPv3 configuration can only be performed when the SNMP is enabled. SNMPv1 configuration can only be performed when the SNMP and the SNMPv1 are enabled.

### SNMP ports configuration

The SNMP default port number (161) can be modified with a PATCH request of the `SNMP/Port` property under the Redfish standard `ManagerNetworkProtocol` URI.

The SNMP default trap port (162) can be modified with a PATCH request of the `OEM/Hpe/SNMPTrapPort` property under the `ManagerNetworkProtocol` URI.

```text Generic PATCH request
PATCH /redfish/v1/Managers/1/NetworkProtocol
```

```json Body
"SNMP": {
        "Port": <integer>
    },
"Oem": {
        "Hpe": {
            "SNMPTrapPort": <integer>
        }
}
```

```shell iLOrest
ilorest select ManagerNetworkProtocol.
ilorest set SNMP/Port=4567 Oem/Hpe/SNMPTrapPort=7654
ilorest status
ilorest commit
ilorest iloreset
```

### SNMP settings

General SNMP settings can be set in under the `HpeiLOSnmpService` [URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpeilosnmpservice).

```text Generic PATCH request
PATCH /redfish/v1/Managers/1/SnmpService
```

```json Body
{
    "Location": "My Location",
    "Contact": "Contact Name",
    "Role": "My role",
    "RoleDetail": "My role details",
    "ReadCommunities": [
        "communitystring1",
        "communitystring2",
        "communitystring3"
    ]
}
```

```shell iLOrest
ilorest select HpeiLOSnmpService.
ilorest set Location="My Location" Contact="Contact Name"
ilorest set Role="My role" RoleDetail="My role details"
ilorest set ReadCommunities/=["CommunityString1","CommunityString2","CommunityString3"]
ilorest status
ilorest commit
ilorest iloreset
```

:::warning Warning
A space between the elements of the `ReadCommunities` array leads to the following error:

`'[CommunityString1,' is not a valid setting for 'ReadCommunities', expecting an array`

:::

### SNMPv3 settings

Specific SNMPv3 settings can be provided under the `/redfish/v1/Managers/1/SnmpService` [URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpeilosnmpservice).

```text Generic PATCH request
PATCH /redfish/v1/Managers/1/SnmpService
```

```json Body
{
    "SNMPv3EngineID": "0x8000000001020304",
    "SNMPv3InformRetryAttempt": 2,
    "SNMPv3InformRetryIntervalSeconds": 15
}
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select HpeiLOSnmpService.
ilorest set SNMPv3EngineID="0x8000000001020304" SNMPv3InformRetryAttempt=2 SNMPv3InformRetryIntervalSeconds=15
ilorest status
ilorest commit
ilorest iloreset
```

### SNMP alerts

SNMP alerts properties can be set under the `/redfish/v1/Managers/1/SnmpService` [URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpeilosnmpservice).

The following properties have been added in `HpeiLOSnmpService` version 2.4.0:  

- `SNMPv1RequestsEnabled`: Enables/disables (Boolean) iLO to receive external SNMPv1 requests.
- `SNMPv1TrapEnabled`: Enables/disables (Boolean) iLO to send SNMPv1 traps to the remote management systems configured in the alert destination.
- `SNMPv3RequestsEnabled`: Enables/disables (Boolean) iLO to receive external SNMPv3 requests.
- `SNMPv3TrapEnabled`: Enables/disables (Boolean) iLO to send SNMPv3 traps to the remote management systems configured in the alert destination.

:::info NOTE

- `SNMPv1Enabled` enables both `SNMPv1RequestsEnabled` and `SNMPv1TrapEnabled`.
- `AlertsEnabled` enables both `SNMPv1TrapEnabled` and `SNMPv3TrapEnabled`.
- Enabling either `SNMPv1RequestsEnabled` or `SNMPv1TrapEnabled` enables `SNMPv1Enabled`.
- Enabling either `SNMPv1TrapEnabled` or `SNMPv3TrapEnabled` enables `AlertsEnabled`.

:::

```text Generic PATCH request
PATCH /redfish/v1/Managers/1/SnmpService
```

```json Body
{
    "TrapSourceHostname": "Manager",
    "AlertsEnabled": true,
    "SNMPv1Enabled": false,
    "Oem": {
        "Hpe": {
            "SNMPColdStartTrapBroadcast": false
        }
    },
    "PeriodicHSATrapConfig": "Disabled"
}
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select HpeiLOSnmpService.
ilorest set TrapSourceHostname="Manager"
ilorest set AlertsEnabled=True
ilorest set SNMPv1Enabled=False
ilorest set Oem/Hpe/SNMPColdStartTrapBroadcast=False
ilorest set PeriodicHSATrapConfig="Disabled" 
ilorest status
ilorest commit
ilorest reset
```

### SNMP alert destinations

Add an SNMP alert destination with a POST request in the `HpeSNMPAlertDestinationCollection` URI.

:::info NOTE

- The `SNMPv1TrapEnabled` option is available when `SNMPv1TrapEnabled` is enabled in the SNMP Alerts section.
- The `SNMPv3TrapEnabled` option is available when `SNMPv3TrapEnabled` is enabled in the SNMP Alerts section and at least one SNMPv3 user is configured.
- The `SNMPv3Inform` option is available when at least one SNMPv3 user is configured.

:::

```text Generic POST request
POST redfish/v1/Managers/1/SnmpService/SNMPAlertDestinations
```

```json Body
{
    "AlertDestination": "192.168.87.41",
    "SNMPAlertProtocol": "SNMPv1Trap",
    "TrapCommunity": "public"
}
```

### SNMPv3 users

SNMPv3 users can be managed under the `HpeSNMPUsersCollection` [URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpesnmpuserscollection).

:::info NOTE

`SNMPv3user`  is available only if the SNMP Protocol is set to `SNMPv3TrapEnabled` or `SNMPv3Inform`.

:::

```text Add SNMP user
POST /redfish/v1/Managers/1/SnmpService/SNMPUsers
```

```json Body
{
    "SecurityName": "snmpuser",
    "AuthProtocol": "SHA",
    "AuthPassphrase": "myauthpassword",
    "PrivacyProtocol": "AES",
    "PrivacyPassphrase": "myPrivacyPassphrase",
    "UserEngineID": "0x8000000001020304"
}
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select HpeSNMPUsersCollection.
ilorest rawpost SnmpUser.json
ilorest logout

cat SnmpUser.json
{
    "/redfish/v1/Managers/1/SnmpService/SNMPUsers": {
        "SecurityName": "snmpuser",
        "AuthProtocol": "SHA",
        "AuthPassphrase": "myauthpassword",
        "PrivacyProtocol": "AES",
        "PrivacyPassphrase": "myPrivacyPassphrase",
        "UserEngineID": "0x8000000001020304"
    }
}
```

View the collection of SNMPv3 users:

```text Generic GET request
GET /redfish/v1/Managers/1/SnmpService/SNMPUsers
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select HpeSNMPUsersCollection.
ilorest get --json
ilorest logout
```

```json Body response
{
  "Description": "SNMPv3 Users Collection view",
  "Members": [
    {
      "@odata.id": "/redfish/v1/Managers/1/SnmpService/SNMPUsers/1/"
    },
    {
      "@odata.id": "/redfish/v1/Managers/1/SnmpService/SNMPUsers/2/"
    }
  ],
  "Name": "SNMPv3 User Collection"
}

```

View the properties of all SNMPv3 users:

```text Generic GET request
GET /redfish/v1/Managers/1/SnmpService/SNMPUsers/?$expand=.
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest --silent rawget '/redfish/v1/Managers/1/SnmpService/SNMPUsers/?$expand=.'
ilorest logout
```

```json Body response
{
  "@odata.context": "/redfish/v1/$metadata#HpeSNMPUsersCollection.HpeSNMPUsersCollection",
  "@odata.etag": "W/\"A4394AAB\"",
  "@odata.id": "/redfish/v1/Managers/1/SnmpService/SNMPUsers/",
  "@odata.type": "#HpeSNMPUsersCollection.HpeSNMPUsersCollection",
  "Description": "SNMPv3 Users Collection view",
  "Members": [
    {
      "@odata.context": "/redfish/v1/$metadata#HpeSNMPUser.HpeSNMPUser",
      "@odata.id": "/redfish/v1/Managers/1/SnmpService/SNMPUsers/1/",
      "@odata.type": "#HpeSNMPUser.v2_1_0.HpeSNMPUser",
      "AuthProtocol": "MD5",
      "Id": "1",
      "PrivacyProtocol": "DES",
      "SecurityName": "test",
      "UserEngineID": "0x800000E8044D585137323430375032"
    },
    {
      "@odata.context": "/redfish/v1/$metadata#HpeSNMPUser.HpeSNMPUser",
      "@odata.id": "/redfish/v1/Managers/1/SnmpService/SNMPUsers/2/",
      "@odata.type": "#HpeSNMPUser.v2_1_0.HpeSNMPUser",
      "AuthProtocol": "SHA",
      "Id": "2",
      "PrivacyProtocol": "AES",
      "SecurityName": "snmpuser",
      "UserEngineID": "0x8000000001020304"
    }
  ],
  "Members@odata.count": 2,
  "Name": "SNMPv3 User Collection"
}


```

Delete SNMP user

```text Delete SNMP user request
DELETE /redfish/v1/Managers/1/SnmpService/SNMPUsers/2
```

```shell iLOrest
ilorest rawdelete --silent --response /redfish/v1/Managers/1/SnmpService/SNMPUsers/2
```

### Send test alerts

Test alerts can be sent to alert destinations using a POST request towards `HpeiLOSnmpService.SendSNMPTestAlert` under the `/redfish/v1/Managers/1/SnmpService` [URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpeilosnmpservice) with an empty body.

```text Send test alerts request
POST /redfish/v1/Managers/1/SnmpService/Actions/HpeiLOSnmpService.SendSNMPTestAlert/
```

```json Body
{}
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest rawpost TestAlerts.json
ilorest logout

cat TestAlerts.json
{
    "/redfish/v1/Managers/1/SnmpService/Actions/HpeiLOSnmpService.SendSNMPTestAlert/": {
    }
}

```