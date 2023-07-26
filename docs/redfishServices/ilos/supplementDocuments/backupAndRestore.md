---
seo:
  title: iLO Backup and restore
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# iLO Backup and Restore

:::info NOTE

It is possible that some properties or resources described in this section are not implemented in iLO 4 and ilo 5.

:::


The Backup and Restore feature allows you to backup and restore the iLO configuration on a system with the same hardware configuration as the system that was backed up. This feature is not meant to duplicate a configuration and apply it to a different iLO system.

In general, it is not expected that you will need to perform an iLO restore operation. However, there are cases in which having a backup of the configuration eases and expedites the return to a normal operating environment.

As with any computer system, backing up your data is a recommended practice to minimize the impact from failures. Hewlett Packard Enterprise recommends performing a backup each time that you update the iLO firmware.

## Battery failure or removal

Various configuration parameters are stored in the battery-powered SRAM. Although rare, the battery can fail. In some situations, battery removal and replacement might be required. To avoid the loss of configuration information, restore the iLO configuration from a backup file after the battery is replaced.

## Reset to factory defaults

In some cases, you might need to reset iLO to the factory default settings to erase settings external to iLO. Resetting iLO to the factory default settings erases the iLO configuration. To recover the iLO configuration quickly, restore the configuration from a backup file after the reset to the factory default settings is complete.

## Accidental or incorrect configuration change

In some cases, the iLO configuration might be changed incorrectly, causing important settings to be lost. This situation might occur if iLO is set to the factory default settings or user accounts are deleted. To recover the original configuration, restore the configuration from a backup file.

## System board replacement

If a system board replacement is required to address a hardware issue, you can use this feature to transfer the iLO configuration from the original system board to the new system board.

## Lost license key

If a license key is accidentally replaced, or you reset iLO to the factory default settings, and you are not sure which key to install, you can restore the license key and other configuration settings from a backup file.

## What information is restored?

The iLO configuration includes many categories such as Power, Network, Security, the User Database, and License Keys. Most configuration information is stored in the battery-powered SRAM memory device, and it can be backed up and restored.

### Information that is not restored

Some information is not suitable to be restored. The information that cannot be restored is not part of the iLO configuration, but instead is related to the iLO or server system state.

The following information is not backed up or restored:

* Security state—Allowing a restore operation to change the iLO security state would defeat the principles of security and enforcement of security.
* Integrated Management Log—To preserve information about events that occurred between the backup and the time or event that required the restore, this information is not restored.
* iLO Event Log—To preserve information about events that occurred between the backup and the time or event that required the restore, this information is not restored.
* Active Health System data—To preserve the information recorded during the backup and restore process, this information is not restored.
* Server state information— Server power state (ON/OFF), Server UID LED states, iLO and server clock settings.

## Backing up the iLO configuration

The iLO configuration backup process requires two steps:

* Trigger a backup file creation in the nonvolatile flash memory (NAND) of the managed server with a GET of the `HpeiLOBackupRestoreService` [URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpeilobackuprestoreservice).
* Download the backup file locally with a GET of the `BackupFileLocation` property URI.

The following example shows those two steps.

The GET operation to the `BackupFileLocation` URI returns HTTP 200 with `Content Type: application/octet-stream`. This is the binary image of the backup file.

```text Create backup file and retrieve BackupFileLocation
GET /redfish/v1/Managers/1/BackupRestoreService/?$select=BackupFileLocation
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#HpeiLOBackupRestoreService.HpeiLOBackupRestoreService",
    "@odata.etag": "W/\"9FD2104B\"",
    "@odata.id": "/redfish/v1/Managers/1/BackupRestoreService/",
    "@odata.type": "#HpeiLOBackupRestoreService.v2_2_0.HpeiLOBackupRestoreService",
    "BackupFileLocation": "/bkupdata/HPE_TWA22525A7_20221208_1512.bak"
}
```

```text Retrieve backup file locally
GET /bkupdata/HPE_TWA22525A7_20221208_1512.bak
```

## Restoring the iLO configuration

To restore a backup file, perform a POST request to the `HttpPushUri` [URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_other_resourcedefns{{process.env.LATEST_FW_VERSION}}/#httppushuri) of the `HpeiLOBackupRestoreService`. The `Content-Type` header of this POST request must be `multipart/form-data` and include the session key. A `Cookie` header containing the session key is also required. See example below.

:::info NOTE
CURL and Python scripts using the <a href="https://github.com/HewlettPackard/python-ilorest-library/tree/master/src/redfish/rest" target="_blank">HPE Python Redfish library</a> don't need to supply any specific `Content-Type` header. It is done automatically. See example below.

Python scripts using the <a href="https://github.com/DMTF/python-redfish-library/tree/master/src/redfish/rest" target="_blank">DMTF Python Redfish library</a> have to include a `multipart/form-data` `Content-Type` header to the POST request.
:::

```text Generic GET HttpPushUri request
GET /redfish/v1/managers/1/backuprestoreservice/?$select=HttpPushUri
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#HpeiLOBackupRestoreService.HpeiLOBackupRestoreService",
    "@odata.etag": "W/\"9FD2104B\"",
    "@odata.id": "/redfish/v1/Managers/1/BackupRestoreService/",
    "@odata.type": "#HpeiLOBackupRestoreService.v2_2_0.HpeiLOBackupRestoreService",
    "HttpPushUri": "/cgi-bin/uploadRestoreFile"
}
```

The following example restores an iLO backup file using cURL and Python scripts with required headers.

```shell cURL
#!/usr/bin/bash

HttpPushUri="/cgi-bin/uploadRestoreFile"
backupFile="HPE_MXQ78407Z2_20230220_1813.bak"
bmcIp="ilo-ip"
bmcUser="ilo-user"
bmcPassword="password"

# The following Bash command creates a Redfish session and populates
# the $Var variable with the Session Token and the Location URL.
echo "Session creation"
Var=$(curl  --silent --location --include --header 'Content-Type: application/json'  \
            --request POST "https://${bmcIp}/redfish/v1/SessionService/Sessions/"    \
            --data "{
                \"UserName\": \"${bmcUser}\",
                \"Password\": \"${bmcPassword}\"
                }"                                                   |               \
            awk  '/Token/ || /Location/  {printf "%s ", $NF}'        |               \
            tr -d '\r')


# Move Token and Session Location in an array
# and extract them into dumb variables.
# Problem: iLO returns   Location: https://ip/redfish/v1/.... while
#          other BMCs (i.e. OpenBMC) return: Location: /redfish/v1/.... 
# Hence we normalize to:  /redfish/v1/..... using awk. Morevore you cannot assume
# any particular order in $Var.
read -r -a TokenAndLocation <<< "$Var"

if [[ ${TokenAndLocation[0]} =~ "/"  ]] ; then
  Location=$(echo ${TokenAndLocation[0]#https://*} | awk -F'/' -vOFS='/'   '{$1="" ; print $0}') 
  Token=${TokenAndLocation[1]}
else
  Location=$(echo ${TokenAndLocation[1]#https://*} | awk -F'/' -vOFS='/'   '{$1="" ; print $0}')
  Token=${TokenAndLocation[0]}
fi

# Restore backup file
echo "Restoring backup file"
curl  --location --form "sessionKey=${Token}" \
      --form "file=@${backupFile}"            \
      --header "X-Auth-Token: ${Token}"       \
      --header "Cookie: sessionKey=${Token}"  \
      https://${bmcIp}${HttpPushUri}

# Logout (May be not required as iLO resets)
echo "Logout" 
curl  --location                                       \
      --header "X-Auth-Token: ${Token}"                \
      --request DELETE https://${bmcIp}${Location}

```

```Python HPE Python
# This simple Python script uses the HPE Redfish Python Library
# (https://github.com/HewlettPackard/python-ilorest-library) to restore
# an iLO configuration file.

# It is based upon the "restorebackup" iLOrest command
# (https://github.com/HewlettPackard/python-redfish-utility/blob/master/src/extensions/iLO_COMMANDS/IloBackupRestoreCommand.py)

# NOTE: The HPE Redfish Python library cannot co-exist with the
#       DMTF Redfish Python library in the same Python environment.
#       You should uninstall one before installing the other one.
#
# pip uninstall redfish
# pip install python-ilorest-library

# The sources of the HPE Redfish Python library is on GitHub at
# https://github.com/HewlettPackard/python-ilorest-library

# -*- coding: utf-8 -*-
"""
An example to restore an iLO backup file.
"""

from redfish import RedfishClient

def restoreserver(_redfishobj, filename):
    """Use a .bak file to restore a server

    :param _redfishobj: Redfish object
    :type _redfishobj: object.
    :param filename: iLO backed up file (.bak) without password
    :type filename: str.
    """

    # The following "restorelocation" variable
    # should be discovered and not hard coded using the "HttpPushUri" in the
    # "HpeiLOBackupRestoreService." data type.
    restorelocation = "/cgi-bin/uploadRestoreFile" 
    skey = _redfishobj.session_key
    headers = {"Cookie": "sessionKey=" + skey}

    with open(filename, "rb") as fle:
            bakfile = fle.read()
    
    postdata = []
    postdata.append(("sessionKey", skey))
    postdata.append(("file", (filename, bakfile, "application/octet-stream")))

    if isinstance(skey, bytes):
            skey = skey.decode("utf-8")
    
    resp = _redfishobj.post(
            path=restorelocation,
            body=postdata,
            headers=headers
        )

    if not resp.status == 200:
        print("Error while uploading the backup file.")
    else:
            print(
                "Restore in progress. iLO will be unresponsive while the "
                "restore completes.\nYour session will be terminated.\n"
            )


if __name__ == "__main__":
    
    SYSTEM_URL = "https://ilo-ip"
    LOGIN_ACCOUNT = "user"
    LOGIN_PASSWORD = "password"
    BackupFile = "HPE_MXQ78407Z2_20230220_1813.bak"

    # Create a Redfish client object
    REDFISHOBJ = RedfishClient(base_url=SYSTEM_URL, username=LOGIN_ACCOUNT, \
                                                                            password=LOGIN_PASSWORD)
    # Login with the Redfish client
    REDFISHOBJ.login()

    restoreserver(REDFISHOBJ, BackupFile)
    
    # Logout
    REDFISHOBJ.logout()  


```

```Python DMTF Python
# This simple Python script uses the DMTF Redfish Python Library
# (https://github.com/DMTF/python-redfish-library) to restore
# an iLO configuration file.

# It is based upon the "restorebackup" iLOrest command
# (https://github.com/HewlettPackard/python-redfish-utility/blob/master/src/extensions/iLO_COMMANDS/IloBackupRestoreCommand.py)

# NOTE: The HPE Redfish Python library cannot co-exist with the
#       DMTF Redfish Python library in the same Python environment.
#       You should uninstall one before installing the other one.
#
# pip uninstall python-ilorest-library
# pip install redfish

# The sources of the DMTF Redfish Python library is on GitHub at
# https://github.com/DMTF/python-redfish-library

# -*- coding: utf-8 -*-
"""
An example to restore an iLO backup file.
"""

from redfish import redfish_client

def restoreserver(_redfishobj, filename):
    """Use a .bak file to restore a server

    :param _redfishobj: Redfish object
    :type _redfishobj: object.
    :param filename: iLO backed up file (.bak) without password
    :type filename: str.
    """
    
    # The following "restorelocation" variable
    # should be discovered and not hard coded using the "HttpPushUri" in the
    # "HpeiLOBackupRestoreService." data type.
    restorelocation = "/cgi-bin/uploadRestoreFile" 
    skey = _redfishobj.get_session_key()
    headers = {"Cookie": "sessionKey=" + skey, 'Content-Type': 'multipart/form-data'}

    with open(filename, "rb") as fle:
            bakfile = fle.read()
    
    postdata = []
    postdata.append(("sessionKey", skey))
    postdata.append(("file", (filename, bakfile, "application/octet-stream")))
    
    if isinstance(skey, bytes):
            skey = skey.decode("utf-8")
    
    resp = _redfishobj.post(
        path=restorelocation,
        body=postdata,
        headers=headers
       )
    
    if not resp.status == 200:
        print("Error while uploading the backup file.")
    else:
            print(
                "Restore in progress. iLO will be unresponsive while the "
                "restore completes.\nYour session will be terminated.\n"
            )

if __name__ == "__main__":
    
    SYSTEM_URL = "https://ilo-ip"
    LOGIN_ACCOUNT = "user"
    LOGIN_PASSWORD = "password"
    BackupFile = "HPE_MXQ78407Z2_20230220_1813.bak"

    # Create a Redfish client object
    REDFISHOBJ = redfish_client(base_url=SYSTEM_URL, username=LOGIN_ACCOUNT, \
                                                                            password=LOGIN_PASSWORD)
    # Login with the Redfish client
    REDFISHOBJ.login(auth="session")

    restoreserver(REDFISHOBJ, BackupFile)
        
    # Logout
    REDFISHOBJ.logout()  


```

## Enabling Custom Backup and Restore

The `HpeiLOBackupRestoreService` OEM resource type contains the `CustomBackupandRestore` [Boolean property](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#custombackupandrestore). Users can enable this property to automatically allow restoring user defined iLO configuration that was earlier used for backup instead of the factory default settings.

The following example retrieves the value of the `CustomBackupandRestore` property as well as its human readable schema description.

```text GET CustomBackupandRestore property
 GET /redfish/v1/managers/1/backuprestoreservice?$select=CustomBackupandRestore
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#HpeiLOBackupRestoreService.HpeiLOBackupRestoreService",
    "@odata.etag": "W/\"9FD2104B\"",
    "@odata.id": "/redfish/v1/Managers/1/BackupRestoreService",
    "@odata.type": "#HpeiLOBackupRestoreService.v2_2_0.HpeiLOBackupRestoreService",
    "CustomBackupandRestore": false
}
```

```bash CustomBackupandRestore schema
ilorest login <ilo-ip> -u <ilop-user> -p <password>
ilorest select HpeiLOBackupRestoreService.
ilorest info CustomBackupandRestore

NAME
    CustomBackupandRestore


DESCRIPTION
    This property indicates whether a custom backup and restore is
    enabled.


TYPE
    boolean


READ-ONLY
    False


POSSIBLE VALUES
    True or False


ilorest logout
Logging session out.

```

:::info NOTE

1. For iLO 6 v1.05, only IPMI and SNMP user configurations are covered in this custom backup and auto-restore feature.
2. An IEL is logged when the `PATCH` is performed to set the `CustomBackupandRestore` property to `true`/`false`.
3. When the auto-restore takes place during the iLO boot, there may be a possible delay of up to 120 seconds before some of the iLO functionalities become available after the auto-restore has taken place.
4. iLO is configured to use the `Production` or `High Security state` - custom backup and auto-restore functionality is not supported in `FIPS` and higher security states.
5. If iLO is reset to the factory default settings, then the custom backup needs to be configured again.

:::
