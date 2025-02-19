---
seo:
  title: Software/Firmware update service
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

## iLO Software/Firmware update service

:::info NOTE

It is possible that some properties or resources described
in this section are not implemented in iLO 4 and ilo 5.

:::

The Redfish standard schema package
<a href="https://www.dmtf.org/dsp/DSP8010"
target="_blank">DSP8010 version 2016.2</a>
introduced the `UpdateService` schema, enabling firmware and software
inventory, and simple firmware updates. The iLO Update Service is conformant
with the `UpdateService`
<a href="http://redfish.dmtf.org/schemas/v1/" target="_blank">schema</a>,
but significantly expands the capabilities to include a component
repository, an update queue, and install sets.

## Concepts and Terms

|Term|Definition|
|---|---|
|Inventory|The installed or running versions of software or firmware.
|Target|The object of a firmware or software update (e.g. BIOS, iLO, Network Adapter, software package).
|Update|The process of applying updated firmware or software to applicable targets.
|Update Agent|The software or firmware agent that applies an update to one or more targets. Update Agents include Smart Update Manager (SUM), Smart Update Tools (SUT), UEFI BIOS, and iLO. Different types of updates might be supported by specific update agents.
|Activate|The process of making updated firmware of software active (for example, a BIOS update is activated when the server reboots).
|Component|A package containing one or more software or firmware update images (also known as a `Smart Component`). Components are typically delivered with the Support Pack for ProLiant (SPP) in EXE, RPM, or ZIP files.
|Component Signature File (`.compsig`)|A file containing information about a component, including a digital signature. This enables iLO to verify the integrity and authenticity of a variety of component formats. The `.compsig` files are also available with the SPP and must be uploaded with the component. SUM automatically uploads the right `.compsig` file with components.
|iLO Repository|A persistent storage location on the server that can hold software or firmware update components.
|Update Task Queue|An iLO managed queue of update operations. iLO might not be the actual update agent. Other update agents include SUM, SUT and the UEFI BIOS.
|Install Set|A pre-defined sequence of update tasks managed using the iLO Redfish API that can be added to the Update Task Queue with an `Invoke` action.
|Maintenance Window|A defined time window that may be used with an Update Task create or Install Set Invoke commands to associate a time with the operation.

## Redfish Update Service Operations

The Update Service is available as a link (`UpdateService`)
from the Redfish root endpoint (`/redfish/v1/`).

### Firmware and Software Inventory

Firmware and software inventories are grouped in the
`SoftwareInventoryCollection`. This
<a href="http://redfish.dmtf.org/schemas/v1/SoftwareInventoryCollection.json"
target="_blank">collection</a>
provides the `FirmwareInventory` and the `SoftwareInventory`
URIs containing respectively the list of firmware and software URIs.

It is possible to fetch the entire collection (firmware and
software inventories) with one GET operation and the `$expand`
[OData query](/docs/redfishservices/ilos/supplementdocuments/odataqueryoptions/),
or using the iLOrest command line tool. See example below.

Firmware and Software inventory items conforms to the Redfish
`SoftwareInventory`
<a href="http://redfish.dmtf.org/schemas/v1/"
target="_blank">schema</a>.

Firmware and Software inventory items are respectively located at at
`/redfish/v1/UpdateService/FirmwareInventory/{item}`
and `/redfish/v1/UpdateService/SoftwareInventory/{item}`.

```text GET firmware and software inventories
GET /redfish/v1/UpdateService/?$expand=.
```

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest select SoftwareInventoryCollection.
ilorest get --json
ilorest logout
```

```json iLOrest response body (truncated)
[
  {
    "@odata.context": "/redfish/v1/$metadata#SoftwareInventoryCollection.SoftwareInventoryCollection",
    "@odata.etag": "W/\"A3D58239\"",
    "@odata.id": "/redfish/v1/UpdateService/FirmwareInventory/",
    "@odata.type": "#SoftwareInventoryCollection.SoftwareInventoryCollection",
    "Description": "Firmware Inventory Collection",
    "Members": [
      {
        "@odata.id": "/redfish/v1/UpdateService/FirmwareInventory/1/"
      },
      {
        "@odata.id": "/redfish/v1/UpdateService/FirmwareInventory/2/"
      },
      {
        "@odata.id": "/redfish/v1/UpdateService/FirmwareInventory/3/"
      },
      {
        "@odata.id": "/redfish/v1/UpdateService/FirmwareInventory/25/"
      },
      {
        "@odata.id": "/redfish/v1/UpdateService/FirmwareInventory/26/"
      },
      {
        "@odata.id": "/redfish/v1/UpdateService/FirmwareInventory/27/"
      }
    ],
    "Members@odata.count": 27,
    "Name": "Firmware Inventory Collection"
  },
  {
    "@odata.context": "/redfish/v1/$metadata#SoftwareInventoryCollection.SoftwareInventoryCollection",
    "@odata.etag": "W/\"E589C4BF\"",
    "@odata.id": "/redfish/v1/UpdateService/SoftwareInventory/",
    "@odata.type": "#SoftwareInventoryCollection.SoftwareInventoryCollection",
    "Description": "Software Inventory Collection",
    "Members": [
      {
        "@odata.id": "/redfish/v1/UpdateService/SoftwareInventory/1/"
      },
      {
        "@odata.id": "/redfish/v1/UpdateService/SoftwareInventory/2/"
      },
      {
        "@odata.id": "/redfish/v1/UpdateService/SoftwareInventory/3/"
      }
    ],
    "Members@odata.count": 3,
    "Name": "Software Inventory Collection"
  }
]

```

### SimpleUpdate Action

The `SimpleUpdate` action with the `ImageURI` parameter causes iLO
to fetch an image from a web server and flash it directly. Only certain
types of images may be supplied, including iLO firmware binaries and UEFI
firmware binaries. Smart Components are not supported.

```text POST action
POST /redfish/v1/UpdateService/Actions/UpdateService.SimpleUpdate/
```

```json Body
{
  "ImageURI": "https://192.168.1.46/kits/U32_2.68_07_14_2022.signed.flash"
}
```

### HttpPushUri

The `HttpPushUri` property indicates the URI to POST a firmware component
that iLO can flash. Only certain types of images may be supplied including
iLO firmware binaries and UEFI firmware binaries. Smart Components
are not supported.

The POST must be of Content-Type: "multipart/form-data"

```text

-----------------------------64062213329524
Content-Disposition: form-data; name="sessionKey"

<value of X-Auth-Token here>

-----------------------------64062213329524
Content-Disposition: form-data; name="<component-filename>";
filename="<component-filename>"
Content-Type: application/octet-stream

<binary image>
```

iLO validates the uploaded binary image and flashes any applicable targets
immediately. If the update is for iLO itself, iLO automatically resets at
the end of the flash process and activates the new firmware upon restart.

## Software and Firmware Management Flow

### Evaluating Current Software and Firmware Inventory to iLO Repository Components

This is the general pseudo-code to correlate applicable updates in the iLO
Repository to updatable items from the inventory.

1. Use the FirmwareInventory and SoftwareInventory data to evaluate the
    current software and firmware running on the server.

```text pseudo-code
for component in /redfish/v1/updateservice/componentrepository:
    for inventory_item in /redfish/v1/updateservice/firmwareinventory:
    
        # if "DeviceClass" is populated in the inventory item
        if DeviceClass in inventory_item:
            # if present and not matching, move along
            if component.DeviceClass != inventory_item.DeviceClass:
                continue
                
        # if we made this this far, either inventory item doesn't have
        DeviceClass or they match for target in component.Targets:
            if target in item.Oem.Hpe.Targets:
                return inventory_item, component # return correlated

```

:::info NOTE
iLO can render a "DeviceClass" string in cases where iLO knows specifically
about the firmware item. Most other inventory entries omit DeviceClass.
:::

1. Upload new components to the iLO Repository
2. Create or modify Install Sets to bundle multiple components in the iLO
    Repository into an ordered list of update operations.
3. Create Maintenance Windows to specify pre-determined time ranges for
    update tasks to be executed.
4. Create tasks individually or Invoke an Install Set to populate the task
    list. Use either a time range for each task or specify a Maintenance
    Window to automatically associate the timed window with the created tasks.
5. Monitor update operations and handle any errors
6. (Optional) Remove any completed Tasks, Maintenance Windows, Install Sets,
    or components that are no longer required.

## Software and Firmware Management Operations

### iLO Repository

The iLO Repository is a persistent storage location for update components
including Smart Component files (`.EXE`, `.RPM`, etc.), as well as raw
binary files (`.BIN`). Additions to the repository require a digital
signature for iLO to verify the integrity and authenticity of the component.
For raw `.BIN` files, this information is contained within the file.
For Smart Components, the information is in a separate Component Signature
file (`.compsig`) that must be supplied when adding a component.

The Repository is available in the REST API as a child of the Update Service.

1. GET root (`/redfish/v1/`).
2. GET the destination of the `UpdateService` link.
3. GET the destination of the `Oem/Hpe/ComponentRepository` link.

Additions to the repository are made via the `UpdateService` actions.
Removals are made by using DELETE on repository collection members.

#### Upload Components

See details on the HttpPushUri in the Update Service resource first.
The upload process can alternatively be used to add components to the
iLO Repository. As with update, the POST must be a multipart/form-data.

```python Required HTTP headers
    # build the HTTP headers
    # 'Content-Type': 'multipart/form-data',
    headers = {'Accept': 'application/json',
               'Expect':'',
               'OData-Version': '4.0',
               'X-Auth-Token': sessionkey,
               'Cookie': 'sessionKey=' + sessionkey}
```

```json POST Body
-----------------------------64062213329524
Content-Disposition: form-data; name="sessionKey"

<value of X-Auth-Token here>

-----------------------------64062213329524
Content-Disposition: form-data; name="parameters"
Content-Type: application/json

{
  "UploadCurrentEtag": "<client-defined-string>",
}

-----------------------------64062213329524
Content-Disposition: form-data; name="compsig"; filename="compsig-filename"
Content-Type: application/octet-stream

<binary content of component signature file>

-----------------------------64062213329524
Content-Disposition: form-data; name="file"; filename="component-filename"
Content-Type: application/octet-stream

<binary content of component file>
```

The new `compsig` part enables the client to push the component signature
file with the payload.

The `parameters` part enables clients to add parameters to the upload
like execution parameters.

#### 'parameters' part in multi-part POST

The following parameters may be specified in a JSON object as part of the
upload. All parameters are optional and the 'Parameters' multi-part
may be optional.

|Parameter Name|JSON type|Description|
|--------------|---------|-----------|
|**UpdateRepository**|Boolean|If true, adds the component to the repository. This is ignored and assumed true for Type C/D components.
|**UploadCurrentEtag**|string|client-selected-etag-string-reported back in 'UploadCurrentEtag'|
|**UpdateTarget**|Boolean|If true, iLO immediately flashes the binary. This is ignored and assumed false for Type C/D components.
|**Section**|integer|Section number for huge uploads (see below) starting at 0.|

:::info NOTE
The two free-form parameters, `ExecutionParameters` and `Configuration`
(used by SUM to communicate to the components) are not supplied here, but
can be PATCHed later once the components are in the Repository.
:::

```json iLO self-flash example
{
  "UploadCurrentEtag": "<client-defined-string>",
  "UpdateRepository": true,
  "UpdateTarget": true
}
```

```json Smart Component example
{
  "UploadCurrentEtag": "<client-defined-string>"
}
```

:::info NOTE
The iLO Repository uses filename of the components as the unique key. No two
components can share the same filename and an upload of a file using an
existing filename overwrites the existing file. If the existing file is
referenced in a task or install set, it is locked and cannot be replaced.
All HPE supplied components have version information in the filename
to avoid any filename conflicts.
:::

#### Waiting for Uploads to Complete

After uploading the component, iLO must verify and write the contents to the
repository. The client may track this progress by polling on
`Oem/Hpe/State` property in the `UpdateService`. Values are:

|State|Detail|
|---|---|
|Idle|The update service is idle|
|Uploading|The update service is receiving a new component. - Clients likely won't see this State.
|Verifying|The Update Service verifying the integrity and authenticity of the upload.
|Writing|The update service is writing a new component to the iLO Repository.
|Updating|The update service is updating (flashing) firmware.
|Complete|The update service has completed up upload or update operation.
|Error|The upload service encountered an error. See Result for detail.

The client should wait for `Complete` before progressing.

:::info NOTES

* Components referenced in a task or install set are locked and cannot
  be replaced or deleted.

* If iLO is updating firmware components, the `UpdateService` indicates
  `Busy`, and uploads are not possible during this time.
:::

#### Inventory Components in iLO Repository

The iLO Repository is a collection that supports the $expand operation.
Perform a GET operation on the collection and its members to inventory
the repository.

Available data for each member includes:

|Property|PATCHable?|Detail|
|---|---|---|
|Name|No|Component Name|
|Filename|No|Unique file name.|
|Version|No|Version as a string.|
|SizeBytes|No|Size in Bytes.|
|Criticality|Yes|Recommended, optional, critical.|
|Created|No|Time the component was added to the repository.|
|Locked|No|True if the component is referenced by a task or install set.
|ComponentUri|No|URI of the component binary.
|Activates|No|A hint of when a component activates (for example, after reboot).
|Configuration|Yes|For Smart Update Manager use only.|
|ExecutionParameters|Yes|The command line passed to the component when launched.

#### Remove Components

Perform a DELETE operation on the repository collection member to
remove it from the repository.

:::info NOTE
Components referenced in a task or install set are locked and not replaceable
or deletable.  In order to remove referenced components, any install sets or
tasks that refer to it must first be deleted.
:::

#### Free Space

The free and total space of the iLO Repository in bytes is available
as part of the Repository Collection.

```text GET Component Repository information
GET /redfish/v1/UpdateService/ComponentRepository/?$select=Oem/Hpe/FreeSizeBytes, Oem/Hpe/TotalSizeBytes
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#HpeComponentCollection.HpeComponentCollection",
    "@odata.etag": "W/\"E873D0A8\"",
    "@odata.id": "/redfish/v1/UpdateService/ComponentRepository/",
    "@odata.type": "#HpeComponentCollection.HpeComponentCollection",
    "Oem": {
        "Hpe": {
            "FreeSizeBytes": 850460672,
            "TotalSizeBytes": 1073168384
        }
    }
}
```

#### Correlating Components with Current Software and Firmware Version Inventory

There is not a one-to-one correspondence between installed firmware or
software and update components. For example, a component might carry
firmware for several network controllers.

This algorithm shows how to correlate current version inventory with
available components:

```python
for component in componentrepository:
    for inventory_item in inventory:

        # if "DeviceClass" is populated in the inventory item
        if DeviceClass in inventory_item:
            # if present and not matching, move along
            if component.DeviceClass != inventory_item.DeviceClass:
                continue

        # if we made this this far, either inventory item doesn't have DeviceClass or they match
        for target in component.Targets:
            if target in item.Oem.Hpe.Targets:
                return inventory_item, component # return correlated
```

### Tasks

#### Update Agents and Strong Queue Order

Different updates must be performed in different ways:

* Using iLO over the management network
* Using UEFI BIOS when the server power is ON
* Using SUM when under an Operating System

The `UpdateableBy` property indicates which "update agent" may
perform the update.

For an update to be applied to a running operating system, SUM or SUT
must run on the OS. SUM/SUT checks for pending tasks that include
`RuntimeAgent` in the `UpdateableBy` property.

For an update to be applied during UEFI POST, UEFI checks for pending tasks
that include `Uefi` in the `UpdateableBy` property.

For an update to be applied any time by iLO, iLO checks for pending tasks
that include `Bmc` in the `UpdateableBy` property. Note that items that
are updateable by iLO are never marked as updatable by any other agent.

Because of the strong ordering of the task queue, updaters do not bypass
another pending item or exception item to find something to update.
This can result in task queue stalls. For example, if the top of the
queue is marked as `Uefi` update, and the second item is marked
`RuntimeAgent`, SUM/SUT won't process their item until the system
has rebooted, and UEFI has processed its top item.

Updaters process the queue in order, looking at the task state:

|Task `State`|Updater Behavior|
|------------|--------|
|Pending|Mark as `InProgress` and begin task.
|InProgress|Do nothing and stop processing the queue - a task item is in progress by another updater (assuming this task is not yours).
|Expired|Do nothing and stop processing the queue - the task item has expired, and because of strong queue ordering, all following tasks are not processed.
|Exception|Do nothing and stop processing the queue - the task item has failed, and because of strong queue ordering, all following tasks are not processed.
|Complete|Iterate to next task and examine its `State`.
|Canceled|Iterate to next task and examine its `State`.

#### Creating Update Tasks

Create a new Task resource to schedule update tasks. POST a new task
object to the tasks collection pointed to by
`UpdateService` `Oem/Hpe/UpdateTaskQueue`:

:::info NOTES

* Each task in the task queue must have a unique `Name` property.
* The name of each task MUST be unique because this makes the task
  queue easier to use with iLO Federation Management. The URI of the
  task is based upon Name information. If the same task is created
  on multiple iLO's, they have the same REST URI.
* HPE components update all applicable targets within a system.
  For that reason, there is no ability to indicate a specific target.
:::

```json Enable component to be updated by either SUM or UEFI
{
  "Name": "Unique Client supplied friendly name of this task item.",
  "UpdatableBy": [
    "Uefi",
    "RuntimeAgent"
 ],
  "Command": "ApplyUpdate",
  "Component": "<component-name>",
  "TPMOverride": true
}
```

```json Enables binary component to be updated by iLO
{
  "Name": "Unique Client supplied friendly name of this task item.",
  "UpdatableBy": [
  "Bmc"
  ],
  "Command": "ApplyUpdate",
  "Component": "<component-name>"
}
```

This creates a new task in the `Pending` state at the end of the queue.
If it assigned to the `Bmc` and is at the top of the queue, iLO starts
operating on it immediately. Otherwise, the new task is operated on as
soon as an updater runs and finds the new task.

:::warning Warning
If a TPM is installed and in use on the system, the `"TPMOverride": true`
property must be set on the task.
:::

#### Creating Scheduled Tasks

A client may specify a time window for a task.  Time is always relative
to iLO's clock.  Two options exist for creating scheduled tasks:
explicit time ranges or Maintenance Windows.

##### Explicit Time Range: Include `StartAfter` and `Expire` in Task Create POST

`StartAfter` and `Expire` are two times that can be included in the task
create `POST` operation. You may specify either or both. Each must be
formatted as an ISO 8601 time string.

Tasks in the `Pending` state will not begin execution until iLO time is
after `StartAfter`.  If for some reason an update does not start and
remains in a `Pending` state until after the `Expire` time, it will never
be executed and the State will be Expired.  This can happen for instance
if a task is to be executed by UEFI and no reboot happens during
the time window.

##### Maintenance Window

See the section on Maintenance Windows later for more details on the
use of Maintenance Windows.

If a client creates a Maintenance Window, this window may be specified
(by `Id`) in the creation of a task.

Maintenance Window example

```json
{
    "Name": "Unique Client supplied friendly name of this task item.",
    "UpdatableBy": [
    "Bmc"
  ],
    "Command": "ApplyUpdate",
    "Component": "<component-name>",
    "MaintenanceWindow": "<maintence-window-id>"
}
```

#### Creating Wait Tasks

Wait tasks can be used to insert time between two other tasks. The
`UpdatableBy` property should contain only one update agent chosen
based upon the updater that needs the time.

Example that causes UEFI to Wait for 30 seconds:

```json
{
  "Name": "Pause 30 seconds",
  "UpdatableBy": [
  "Uefi"
  ],
  "Command": "Wait",
  "WaitTimeSeconds": 30
}
```

`WaitTimeSeconds` can be in the range 0-3600 seconds.s

#### Retiring and Removing Tasks

The REST client that creates an update task is expected to DELETE the task
upon completion after the final status/log information is obtained.

Tasks are removed by performing a DELETE operation on the task collection
member. The entire queue can be cleared by deleting all tasks. `InProgress`
tasks should not be deleted even though the REST API will allow it.
This might be useful if the task list is stalled and needs to be cleared.

HPE iLO automatically removes completed tasks (`State` is `Complete`)
after 24 hours but tasks in any other state are not removed.

#### Handling Exceptions

If a task cannot complete it will report a `State` value of `Exception`.
Tasks in this state do not automatically clear and require attention to clear.
You may remove the task and re-add it later if there is a condition corrected
that improves its chances of executing to completion.

#### Stalls in the Task Queue

Tasks can be added to the task queue that cannot execute to completion.
In this case, the task queue might stall waiting for attention or the
appropriate updater to execute. Examples may include the following:

* A task requires the UEFI BIOS to execute it (`Uefi`). In this case the task
  does not execute until the server is rebooted.
* A task requires SUM or SUT to execute it (`RuntimeAgent`). In this case the
  task does not execute until either SUM or SUT is executed on the server.
  If neither is installed, the task waits forever.
* A task might result in an exception state. In this case, the task will
  remain in the queue and no further tasks will be executed until the Task
  Queue is cleared and reset.
* A task may be scheduled to execute during a time range in the
  past or in the future.

### Maintenance Windows

Tasks can be created and Install Sets invoked with either an explicit time
range (specifying `StartAfter` and `Expire` times) or by referring by
`Id` to a Maintenance Window.

The Maintenance Window collection is pointed to by
`UpdateService` `Oem/Hpe/MaintenanceWindows`:

A special feature of Maintenance Windows is that any task associated with
a Maintenance Window may be rescheduled by PATCHing the Maintenance Window
instead of modifying multiple tasks.

#### Creating Maintenance Windows

POST a new object to the Maintenance Window collection:

```json Body
{
    "Name": "unique name of the Maintenance Window.",
    "StartAfter": "ISO 8601 Redfish-style time string of earliest execution - null for no start time specified",
    "Expire": "ISO 8601 Redfish-style time string after which we will automatically change state to Expired - null for no expire time"
}
```

Any of these properties may be PATCHed to modify an existing
Maintenance Window.

:::info NOTE
The `Id` property (and the URI of the item) is derived from the `Name`
property. PATCHing `Name` is not recommended because it will change the
`Id` and the URI of the item.
**This can invalidate references to the item.**
:::

#### Referring to Maintenance Windows

Each Maintenance Window has an `Id` string property. Use this value with the
`MaintenanceWindow` property when creating a task or invoking an install set.

#### Removing Maintenance Windows

Maintenance Windows are removed by performing a DELETE operation on
the Maintenance Window member.

Maintenance Windows will eventually be outdated with times in the
past and should be removed.

### Install Sets

Create a new install set resource to create Install Sets. POST a new install
set object to the install set collection pointed to by
`UpdateService` `Oem/Hpe/InstallSets`:

:::info NOTE
Each Install Set must have a unique `Name` property. Additionally, the name
of each Sequence item must be unique because these become the task names when
the install set is invoked.
:::

#### Creating Install Sets

POST a new install set object to the install set collection:

```json
{
    "Name": "unique name of the install set.",
    "IsRecovery": false,
    "Sequence": 
    [
        {
            "Name": "Client supplied friendly name of this task item.",
            "UpdatableBy": 
      [
                "Uefi",
                "RuntimeAgent"
            ],
            "Command": "ApplyUpdate",
            "Filename": "Name of the file as it apperars in the repository."        
        }
    ]
}
```

#### Invoking Install Sets

Install Sets are invoked by performing the `Invoke` action on the install
set member item. The Invoke action has no parameters.

Invoking an install set causes iLO to append the task queue with new tasks,
each corresponding to the items in the Sequence array.

:::success Tip
As good practice, a client should clear the task queue before invoking an
install set. iLO does not do this automatically because of various task
results that might need to be preserved.
:::

```text Action
POST /redfish/v1/updateservice/installsets/{id}/Actions/
HpeComponentInstallSet.Invoke
Content-Type: application/json
```

```json Body
{
    "ClearTaskQueue": true,
}
```

##### Scheduled Install Sets

A client may specify a time window for an Install Set.  Time is always
relative to iLO's clock.  Two options exist for creating scheduled tasks:
explicit time ranges or Maintenance Windows.

##### Explicit Time Range: Include `StartAfter` and `Expire` in Invoke

`StartAfter` and `Expire` are two times that can be included in `Invoke`
Action. You may specify either or both.  Each must be formatted as an
ISO 8601 time string.

Each task in the Install Set is created with this explicit time range. Tasks
in the `Pending` state do not begin execution until iLO time is after
`StartAfter`. If for some reason an update does not start and remains in a
`Pending` state until after the `Expire` time, it is never executed and the
state gets Expired. This can happen, for instance, if UEFI executes a task
and no reboot happens during the time window.

```text Action
POST /redfish/v1/updateservice/installsets/{id}/Actions/
HpeComponentInstallSet.Invoke
Content-Type: application/json
```

```json Body
{
  "ClearTaskQueue": true,
  "StartAfter": "ISO 8601 Redfish-style time string of earliest execution - null for no start time specified",
  "Expire": "ISO 8601 Redfish-style time string after which we will automatically change state to Expired - null for no expire time"
}
```

##### Maintenance Windows

If a client creates a Maintenance Window, this window may be specified
(by `Id`) in the Install Set `Invoke`.

```text Action
POST /redfish/v1/updateservice/installsets/{id}/Actions/
HpeComponentInstallSet.Invoke
Content-Type: application/json
```

```json Body
{
    "ClearTaskQueue": true,
    "MaintenanceWindow": "<maintenence-windows-Id>"
}
```

#### Removing Install Sets

Install Sets are removed by performing a DELETE operation on the
install set member.

#### Using Install Sets for Rollback and Baseline Management

iLO does not maintain a specific `rollback` architecture. Instead, a client
might maintain alternate versions of the same deliverable in the iLO
Repository, and maintain multiple (up to 8) install sets in the
InstallSets collection.

#### Firmware Recovery Install Set

`SystemRecoveryConfigPriv`

One of the install sets on the system might be marked with a property
`"IsRecovery": true`. If true, the install set is reserved to hold only
critical firmware recovery components.

`Administrate Recovery Set` iLO user privilege is required to modify or
remove this install set. This is called `SystemRecoveryConfigPriv` in the
REST API's Account privileges. This privilege enables users to alter or
remove this recovery install set.

The recovery install set should only be modified with care and hold a minimal
set of firmware updates needed to make the server bootable. These firmware
image files must be directly flashable by iLO. The sequence or order is
important because the install set is in the order of update.

### Target Based Firmware Update

A new property `Targets` is added. `Targets` are firmware inventory URIs.
If present in the payload, the device corresponding to the firmware inventory
URI is considered for a firmware update. Maximum supported targets are `10`.

#### Add From URI

`Targets` are introduced under the URI
`/redfish/v1/UpdateService/Actions/Oem/Hpe/HpeiLOUpdateServiceExt.AddFromUri/`.
If `Targets` are provided in the payload, and `UpdateTarget` is set as `True`,
the firmware updates are applied on the provided Targets.

```text POST operation
POST /redfish/v1/UpdateService/Actions/Oem/Hpe/
HpeiLOUpdateServiceExt.AddFromUri/
```

```json POST Payload
{

  "ImageURI":"https://<Hostname>/78234252243101731641816114517031190620195/HPE_MR416i-p_Gen10_52.22.3-4650_C.fwpkg",
  "TPMOverrideFlag": true,
  "UpdateRepository": false,
  "UpdateTarget": true,
  "Targets":[
    "/redfish/v1/UpdateService/FirmwareInventory/16", "/redfish/v1/UpdateService/FirmwareInventory/18"
    ]

}
```

#### Install Sets

`Targets` is introduced while creating install sets under the URI
`/redfish/v1/UpdateService/InstallSets`. If `Targets` are provided,
the firmware updates are applied on the provided Targets when
the `InstallSets` are invoked.

```text POST operation
POST /redfish/v1/UpdateService/InstallSets
```

```json POST Payload 
{

    "Description": "Service Pack for Proliant",
    "IsRecovery": false,
    "Name": "iLOInstallset",
    "Sequence": [
         {
            "Command": "ApplyUpdate",
            "ExecutionTimeoutMinutes": 1,
            "Filename": "PICGen10-1.0.8-1.fwpkg",
            "Name": "FW for Advanced Power Capping Microcontroller Firmware for HPE G",
            "UpdatableBy": [
                "Bmc"
            ],
            "Targets": ["/redfish/v1/UpdateService/FirmwareInventory/6"],
            "WaitTimeSeconds": 0
        }

  ]

}
```

#### Tasks

`Targets` are introduced while creating update tasks under
the URI `/redfish/v1/UpdateService/UpdateTaskQueue`.
If `Targets` are provided, the firmware updates are applied
on the provided `Targets`.

```text POST operation
POST /redfish/v1/UpdateService/UpdateTaskQueue
```

```json Request Body
{

      "Name": "ATS-M AMC upgrade", 
      "Command": "ApplyUpdate", 
      "Filename": "Intel-ATS-M_pldm_sg2_amc_v_6_4_0_0.bin.hpepkg.signed", 
      "UpdatableBy": ["Bmc"], 
      "Targets": ["/redfish/v1/UpdateService/FirmwareInventory/22","/redfish/v1/UpdateService/FirmwareInventory/19"],
      "TPMOverride": true

}
```

```json Response Body
{
  "@odata.context": "/redfish/v1/$metadata#HpeComponentUpdateTask.HpeComponentUpdateTask",
  "@odata.etag": "W/_\"969F82AA",
  "@odata.id": "/redfish/v1/UpdateService/UpdateTaskQueue/9774ef68",
  "Id":"9774ef68",
  "Command": "ApplyUpdate", 
  "Component": "/redfish/v1/UpdateService/ComponentRepository/f61dfea0",
  "Created": "2023-09-08T12:11:01Z",
  "ExecutionTimeoutMinutes":0,
  "Filename": "Intel-ATS-M_pldm_sg2_amc_v_6_4_0_0.bin.hpepkg.signed",
  "Modified": "2023-09-08T12:11:01Z",
  "Name": "MyTask",
  "RecoveryPrivilege": false,
  "State": "Pending",
  "TPMOverride": true,
  "Targets": [
    "/redfish/v1/UpdateService/FirmwareInventory/22",
    "/redfish/v1/UpdateService/FirmwareInventory/19"
  ],
  "UpdatableBy":[
    "Bmc"
  ],
  "UpdatedRecoverySet": false
}
```

## Firmware Verification

Firmware Verification, available with the
_iLO Advanced Premium Security Edition_, enables you to run an on-demand
verification scan or implement scheduled scans.

To respond to detected issues, choose between logging the results,
or logging the results and initiating a
repair action that uses a recovery install set.

Depending on the scan results, information is logged in the Active
Health System Log and the Integrated Management Log.

The following firmware items are verified:

* iLO 6
* System UEFI BIOS
* System Programmable Logic Device (CPLD)
* Server Platform Services (SPS) Firmware
* Innovation Engine (IE) Firmware

When a firmware verification scan is in progress, you cannot install
firmware updates or upload firmware to the iLO Repository.

### Configuring Firmware Verification

Available with _iLO Advanced Premium Security Edition_

Firmware Verification scan options:

* Enable Background Scan (`EnableBackgroundScan`) enables or disables
  Firmware Verification scanning. When enabled, iLO scans the supported
  installed firmware for file corruption.
* Integrity Failure Action (`OnIntegrityFailure`) determines the action
  iLO takes when a problem is found during a Firmware Verification scan.
  * To log the results, patch `LogOnly`.
  * To log the results and initiate a repair action,
    patch `LogAndRepairAutomatically`.

If a problem is detected for a supported firmware item, iLO checks
for the affected firmware type in a protected install set. By default,
this set is the System recovery set. If a firmware image is available,
iLO flashes that firmware image to complete the repair.

* Scan Interval ("`ScanEveryDays`") sets the background scan frequency
  in days. Valid values are from 1 to 365.

```text Action
GET /redfish/v1/UpdateService/
```

```json Body
{
    "Oem": {
        "Hpe": {
            "FirmwareIntegrity": {
                "EnableBackgroundScan": true,
                "LastScanResult": "OK",
                "LastScanTime": "2017-05-31T19:14:54Z",
                "OnIntegrityFailure": "LogAndRepairAutomatically",
                "ScanEveryDays": 14
            }
        }
    }
}
```

### Initiating a Firmware Verification Scan

Available with _iLO Advanced Premium Security Edition_

You may manually start a firmware verification scan by invoking the action
"StartFirmwareIntegrityCheck". You must have the iLO Advanced Premium
Security Edition license to use this feature.

```text Action
POST /redfish/v1/UpdateService/Actions/Oem/Hpe/
HpeiLOUpdateServiceExt.StartFirmwareIntegrityCheck
```
