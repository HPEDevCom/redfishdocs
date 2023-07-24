---
seo:
  title: Persistent Memory commands
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

## Persistent Memory Commands

This section covers commands related to the discovery and configuration of HPE Persistent Memory.

### Clear Pending Configuration Command

#### Syntax


clearpmmpendingconfig

#### Description


Clears all pending persistent memory configuration tasks.

#### Parameters


- **-h, --help**

Displays help on the usage of this command.

#### Examples

Clear all pending persistent memory configuration tasks.

```shell
iLOrest > clearpmmpendingconfig

Deleted Task #1948
Deleted Task #1949
Deleted Task #1950
Deleted Task #1951
Deleted Task #1952
Deleted Task #1953

```

### Persistent Memory Advanced Configuration Command

#### Syntax



provisionpmm [-h | --help] [-m | --memory-mode=(0|%)] [-i | --pmem-interleave=(On|Off)] [-pid | --proc=(processorID)] [-f | --force]


#### Description



Applies user specified configuration to persistent memory modules.


#### Parameters



- **-h, --help**

Displays help on the usage of this command.

- **-m, --memory-mode**

Optionally allows user to specify the percentage of total capacity that should be configured as Volatile. Defaults to 0% Volatile. The remaining capacity will be configured as Persistent.

- **-i, --pmem-interleave**

Indicates whether the persistent memory regions should be interleaved or not (Allowed values: "on", "off").

- **-p, --proc**

Optionally allows user to specify the processors (comma separated list of ProcessorNumbers) on which the selected configuration would be applied. Defaults to all processors.

- **-f, --force**

Allow the user to force the configuration by automatically accepting any prompts.

#### Examples

Configure all persistent memory modules on processors 1 and 3 to 50% Volatile with no persistent interleave regions.

```shell
iLOrest > provisionpmm -m 50 -i off -pid 1,3

***WARNING: Configuration changes require reboot to take effect***

Operation    PmemSize    VolatileSize    DimmIds
CREATE       63.19 GB    63.19 GB        1@1
CREATE       63.19 GB    63.19 GB        1@12
CREATE       63.19 GB    63.19 GB        3@1
CREATE       63.19 GB    63.19 GB        3@12

```

Example: Configure all installed persistent memory modules to 25% Volatile with persistent interleave regions.

```shell
iLOrest > provisionpmm -m 25 -i on

***WARNING: Configuration changes require reboot to take effect***

Operation    PmemSize    VolatileSize    DimmIds
DELETE       126.0 GB    126.76 GB       1@1, 1@12
DELETE       126.0 GB    126.76 GB       2@1, 2@12
CREATE       189.57 GB   63.19 GB        1@1, 1@12
CREATE       189.57 GB   63.19 GB        2@1, 2@12

```

### Persistent Memory Discovery Command

#### Syntax


showpmm --device | -D [--dimm=(DIMM IDs) | -I] [--json | -j]

showpmm --pmmconfig | -C [--dimm=(DIMM IDs) | -I] [--json | -j]

showpmm --logical | -L [--json | -j]

showpmm --summary | -M [--json | -j]

#### Description


Displays information about the installed persistent memory modules.

#### Parameters


- **-h, --help**

Displays help on the usage of this command.

- **-D, --device**

Shows a physical overview of installed persistent memory modules.

- **-C, --pmmconfig**

Shows the current configuration of installed persistent memory modules.

- **-L, --logical**

Shows the persistent interleave sets (if present).

- **-M, --summary**

Shows a summary of the installed persistent memory modules.

- **-I, --dimm**

Optionally use this flag to filter output by DIMM IDs (ProcessorNumber@SlotNumber). Can be used in conjunction with the `-D | --device` or the `-C | --pmmconfig` flags.

- **-j, --json**

Optionally use this flag to display output in JSON format.


#### Examples

Show information about the physical persistent memory modules.

```shell
iLOrest > showpmm --device

Location        Capacity    Status    DIMMStatus    Life    FWVersion
PROC 1 DIMM 1   126.38 GB   OK        GoodInUse     100%    01.02.00.5360
PROC 1 DIMM 12  126.38 GB   OK        GoodInUse     100%    01.02.00.5360
PROC 2 DIMM 1   126.38 GB   OK        GoodInUse     100%    01.02.00.5360
PROC 2 DIMM 12  126.38 GB   OK        GoodInUse     100%    01.02.00.5360

```

Show current configuration of selected persistent memory modules.

```shell
iLOrest > showpmm --pmmconfig --dimm=1@12,2@12

Location        VolatileSize    PmemSize    PmemInterleaved
PROC 1 DIMM 12  126.38 GB       0.0 GB      N/A
PROC 2 DIMM 12  126.38 GB       0.0 GB      N/A

```

Show the persistent interleave regions in JSON format.

```shell
iLOrest > showpmm --logical --dimm=1@12,2@12

[ { 'DimmIds': '1@1, 1@12',
    'PmemSize': { 'Units': 'GB',
                  'Value': 252.0}},
  { 'DimmIds': '2@1, 2@12',
    'PmemSize': { 'Units': 'GB',
                  'Value': 252.0}}]

```

Show a summary of the persistent memory resources.

```shell
iLOrest > showpmm --summary

TotalCapacity:  505.52 GB
TotalVolatileSize:  505.52 GB
TotalPmemSize:  0.0 GB

```

### Persistent Memory Guided Configuration Command

#### Syntax


applypmmconfig -L | --list

applypmmconfig -C | --pmmconfig [-f | --force]

#### Description


Apply a predefined configuration to installed persistent memory modules.

#### Parameters


- **-h, --help**

Displays help on the usage of this command.

- **-L, --list**

Display a list of available predefined configIDs along with a brief description.

- **-C, --pmmconfig**

Specify one of the predefined configIDs to apply to all persistent memory modules.

- **-f, --force**

Allow the user to force the configuration by automatically accepting any prompts.

#### Examples

Show a list of supported guided configurations.

```shell
iLOrest > applypmmconfig --list

Available Configurations:

MemoryMode
        Configure all PMMs to 100% Memory Mode.
PmemInterleaved
        Configure all PMMs to 100% Persistent. Interleave the Persistent memory regions within each processor.
PmemNotInterleaved
        Configure all PMMs to 100% Persistent. The Persistent memory regions are not interleaved.

```

Configure all installed persistent memory modules as 100% Volatile.

```shell
iLOrest > applypmmconfig --pmmconfig MemoryMode

***WARNING: Configuration changes require reboot to take effect***

Operation    PmemSize    VolatileSize    DimmIds
CREATE       0.0 GB      252.76 GB       1@1, 1@12
CREATE       0.0 GB      252.76 GB       2@1, 2@12

```

### Show Pending Configuration Command

#### Syntax


showpmmpendingconfig [-j | --json]

#### Description


Shows the queued tasks pending a reboot for configuring persistent memory modules.

#### Parameters


- **-h, --help**

Displays help on the usage of this command.

- **-j, --json**

Optionally use this flag to display output in JSON format.

#### Examples

Show persistent memory configuration changes pending a reboot.

```shell
iLOrest > showpmmpendingconfig

Operation    PmemSize    VolatileSize    DimmIds
DELETE       190.0 GB    62.76 GB        1@1, 1@12
DELETE       190.0 GB    62.76 GB        2@1, 2@12
CREATE       94.78 GB    31.59 GB        1@1
CREATE       94.78 GB    31.59 GB        1@12
CREATE       94.78 GB    31.59 GB        2@1
CREATE       94.78 GB    31.59 GB        2@12

```

### Show Recommended Configuration Command

#### Syntax


showrecommendedpmmconfig

#### Description


Shows the recommended persistent memory configurations.

#### Parameters


- **-h, --help**

Displays help on the usage of this command.

#### Examples

Show a list of recommended persistent memory configurations

```shell
iLOrest > showrecommendedpmmconfig

MemoryModeTotalSize    PmemTotalSize    CacheRatio
0 GB                   505 GB           N/A
377 GB                 128 GB           1:2.9
505 GB                 0 GB             1:3.9

```

### Display Security State Command

#### Syntax

pmmsecuritystate

#### Description

Displaying the Security state of dimms.

#### Parameters

- **-h, --help**

Displays help on the usage of this command.

#### Example

Displaying the Security state of dimms

```shell
iLOrest > pmmsecuritystate

+-------------+----------+
| Location    | State    |
|-------------+----------|
| proc1dimm2  | Disabled |
| proc1dimm5  | Disabled |
| proc1dimm8  | Disabled |
| proc1dimm11 | Disabled |
| proc2dimm2  | Disabled |
| proc2dimm5  | Disabled |
| proc2dimm8  | Disabled |
| proc2dimm11 | Disabled |
+-------------+----------+

```
