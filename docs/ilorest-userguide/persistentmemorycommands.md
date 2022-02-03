---
seo:
  title: Persistent Memory commands
toc:
  enable: true
  maxDepth: 3
disableLastModified: true
---

## Persistent Memory Commands

This section covers commands related to the discovery and configuration of HPE Persistent Memory.

### Clear Pending Configuration Command


> Example: Clear all pending persistent memory configuration tasks.

<pre>
iLOrest > <span style="color: #01a982; ">clearpmmpendingconfig</span>

Deleted Task #1948
Deleted Task #1949
Deleted Task #1950
Deleted Task #1951
Deleted Task #1952
Deleted Task #1953

</pre>

<p class="fake_header">Syntax</p>

clearpmmpendingconfig

<p class="fake_header">Description</p>

Clears all pending persistent memory configuration tasks.

<p class="fake_header">Parameters</p>

- **-h, --help**

Displays help on the usage of this command.

### Persistent Memory Advanced Configuration Command

> Example: Configure all persistent memory modules on processors 1 and 3 to 50% Volatile with no persistent interleave regions.

<pre>
iLOrest > <span style="color: #01a982; ">provisionpmm -m 50 -i off -pid 1,3</span>

***WARNING: Configuration changes require reboot to take effect***

Operation    PmemSize    VolatileSize    DimmIds
CREATE       63.19 GB    63.19 GB        1@1
CREATE       63.19 GB    63.19 GB        1@12
CREATE       63.19 GB    63.19 GB        3@1
CREATE       63.19 GB    63.19 GB        3@12

</pre>

> Example: Configure all installed persistent memory modules to 25% Volatile with persistent interleave regions.

<pre>
iLOrest > <span style="color: #01a982; ">provisionpmm -m 25 -i on</span>

***WARNING: Configuration changes require reboot to take effect***

Operation    PmemSize    VolatileSize    DimmIds
DELETE       126.0 GB    126.76 GB       1@1, 1@12
DELETE       126.0 GB    126.76 GB       2@1, 2@12
CREATE       189.57 GB   63.19 GB        1@1, 1@12
CREATE       189.57 GB   63.19 GB        2@1, 2@12

</pre>


<p class="fake_header">Syntax</p>


provisionpmm [-h | --help] [-m | --memory-mode=(0|%)] [-i | --pmem-interleave=(On|Off)] [-pid | --proc=(processorID)] [-f | --force]


<p class="fake_header">Description</p>


Applies user specified configuration to persistent memory modules.


<p class="fake_header">Parameters</p>


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

### Persistent Memory Discovery Command


> Example: Show information about the physical persistent memory modules.


<pre>
iLOrest > <span style="color: #01a982; ">showpmm --device</span>

Location        Capacity    Status    DIMMStatus    Life    FWVersion
PROC 1 DIMM 1   126.38 GB   OK        GoodInUse     100%    01.02.00.5360
PROC 1 DIMM 12  126.38 GB   OK        GoodInUse     100%    01.02.00.5360
PROC 2 DIMM 1   126.38 GB   OK        GoodInUse     100%    01.02.00.5360
PROC 2 DIMM 12  126.38 GB   OK        GoodInUse     100%    01.02.00.5360

</pre>

> Example: Show current configuration of selected persistent memory modules.

<pre>
iLOrest > <span style="color: #01a982; ">showpmm --pmmconfig --dimm=1@12,2@12</span>

Location        VolatileSize    PmemSize    PmemInterleaved
PROC 1 DIMM 12  126.38 GB       0.0 GB      N/A
PROC 2 DIMM 12  126.38 GB       0.0 GB      N/A

</pre>

> Example: Show the persistent interleave regions in JSON format.

<pre>
iLOrest > <span style="color: #01a982; ">showpmm --logical --dimm=1@12,2@12</span>

[ { 'DimmIds': '1@1, 1@12',
    'PmemSize': { 'Units': 'GB',
                  'Value': 252.0}},
  { 'DimmIds': '2@1, 2@12',
    'PmemSize': { 'Units': 'GB',
                  'Value': 252.0}}]

</pre>

> Example: Show a summary of the persistent memory resources.

<pre>
iLOrest > <span style="color: #01a982; ">showpmm --summary</span>

TotalCapacity:  505.52 GB
TotalVolatileSize:  505.52 GB
TotalPmemSize:  0.0 GB

</pre>

<p class="fake_header">Syntax</p>

showpmm --device | -D [--dimm=(DIMM IDs) | -I] [--json | -j]

showpmm --pmmconfig | -C [--dimm=(DIMM IDs) | -I] [--json | -j]

showpmm --logical | -L [--json | -j]

showpmm --summary | -M [--json | -j]

<p class="fake_header">Description</p>

Displays information about the installed persistent memory modules.

<p class="fake_header">Parameters</p>

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


### Persistent Memory Guided Configuration Command


> Example: Show a list of supported guided configurations.


<pre>
iLOrest > <span style="color: #01a982; ">applypmmconfig --list</span>

Available Configurations:

MemoryMode
        Configure all PMMs to 100% Memory Mode.
PmemInterleaved
        Configure all PMMs to 100% Persistent. Interleave the Persistent memory regions within each processor.
PmemNotInterleaved
        Configure all PMMs to 100% Persistent. The Persistent memory regions are not interleaved.

</pre>

> Example: Configure all installed persistent memory modules as 100% Volatile.

<pre>
iLOrest > <span style="color: #01a982; ">applypmmconfig --pmmconfig MemoryMode</span>

***WARNING: Configuration changes require reboot to take effect***

Operation    PmemSize    VolatileSize    DimmIds
CREATE       0.0 GB      252.76 GB       1@1, 1@12
CREATE       0.0 GB      252.76 GB       2@1, 2@12

</pre>

<p class="fake_header">Syntax</p>

applypmmconfig -L | --list

applypmmconfig -C | --pmmconfig [-f | --force]

<p class="fake_header">Description</p>

Apply a predefined configuration to installed persistent memory modules.

<p class="fake_header">Parameters</p>

- **-h, --help**

Displays help on the usage of this command.

- **-L, --list**

Display a list of available predefined configIDs along with a brief description.

- **-C, --pmmconfig**

Specify one of the predefined configIDs to apply to all persistent memory modules.

- **-f, --force**

Allow the user to force the configuration by automatically accepting any prompts.

### Show Pending Configuration Command

> Example: Show persistent memory configuration changes pending a reboot.

<pre>
iLOrest > <span style="color: #01a982; ">showpmmpendingconfig</span>

Operation    PmemSize    VolatileSize    DimmIds
DELETE       190.0 GB    62.76 GB        1@1, 1@12
DELETE       190.0 GB    62.76 GB        2@1, 2@12
CREATE       94.78 GB    31.59 GB        1@1
CREATE       94.78 GB    31.59 GB        1@12
CREATE       94.78 GB    31.59 GB        2@1
CREATE       94.78 GB    31.59 GB        2@12

</pre>

<p class="fake_header">Syntax</p>

showpmmpendingconfig [-j | --json]

<p class="fake_header">Description</p>

Shows the queued tasks pending a reboot for configuring persistent memory modules.

<p class="fake_header">Parameters</p>

- **-h, --help**

Displays help on the usage of this command.

- **-j, --json**

Optionally use this flag to display output in JSON format.

### Show Recommended Configuration Command

> Example: Show a list of recommended persistent memory configurations

<pre>
iLOrest > <span style="color: #01a982; ">showrecommendedpmmconfig</span>

MemoryModeTotalSize    PmemTotalSize    CacheRatio
0 GB                   505 GB           N/A
377 GB                 128 GB           1:2.9
505 GB                 0 GB             1:3.9

</pre>

<p class="fake_header">Syntax</p>

showrecommendedpmmconfig

<p class="fake_header">Description</p>

Shows the recommended persistent memory configurations.

<p class="fake_header">Parameters</p>

- **-h, --help**

Displays help on the usage of this command.

### Display Security State Command

> Example: Displaying the Security state of dimms

<pre>
iLOrest > <span style="color: #01a982; ">pmmsecuritystate</span>

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

</pre>

<p class="fake_header">Syntax</p>

pmmsecuritystate

<p class="fake_header">Description</p>

Displaying the Security state of dimms.

<p class="fake_header">Parameters</p>

- **-h, --help**

Displays help on the usage of this command.
