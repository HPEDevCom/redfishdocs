---
seo:
  title: iLOrest installation
toc:
  enable: true
  maxDepth: 3
disableLastModified: true
---

# HPE iLOrest installation procedure

## Requirements

<!-- This paragraph needs complete and deep review -->

The requirements for the managed server are as follows:

- Local management: Gen9 or greater server with a Windows OS or
  Linux OS installed.
  
<!-- What about RHEL 9 and ARM based servers ? -->
- Supported Operating Systems for local management:
  Windows 2022, 2019, 2016, RHEL 8.x, 9.x, 9.x ARM64,
  SUSE 15SPx, 12SP3, MAC, Debian 9, 10, 10 ARM64.
- Remote management: HPE Gen9 or later servers with
  or without an OS installed.
- HPE iLO 6: 1.05 or later.
- HPE iLO 5: 1.20 or later.
- HPE iLO 4: 2.10 or later.
- On a Linux systems, the `/tmp` folder must be configured
  with execute permission. If the `/tmp` folder does not allow code execution,
  HPE iLOrest will not start. It is possible to work around this
  requirement by exporting an environment variable pointing to
  another location. `$ export TMPDIR=/some/other/location`.
  You can assign a new location to any of the following
  environment variables: `TMPDIR`, `TEMP`, `TMP`.

## Updating the JSON schemas used by HPE iLOrest

<!-- 
     Need practical examples or the exact location
     where the schemas are updated to better illustrate
     the topic
-->
Latest schemas are automatically updated when using
HPE iLO 4 2.10 or later and the RESTful Interface
Tool 2.4.0 or later.  

:::info NOTE
When using an earlier version of HPE iLO or an earlier
version of the RESTful Interface Tool, you must manually
get the latest JSON schemas from the SPP located in
the `hp_restful_api` directory. Copy the schema files to
the appropriate directory: <!-- What is this "appropriate directory" ? -->
:::

## Installing the RESTful Interface Tool

Perform the following steps to install the tool in a
Microsoft Windows or Linux OS:

- Download the latest HPE iLOrest package from
[Github Releases](https://github.com/HewlettPackard/python-redfish-utility/releases/latest)
or install the PyPI package as instructed in the next paragraph.

- For local management (in-band), deploy the package on the managed
server's OS. For remote management (out-of-band), install the
package on a laptop or server that has network access
to the managed server network.
- Linux only: Most Linux operating systems have `/tmp`
mounted with `noexec` by default.
Before running HPE iLOrest, the file systems table must be
configured so that `/tmp` is mounted with `exec`.
Use `mount -o remount,exec /tmp` to remount `/tmp` in `exec` mode.

## Installing the iLOrest PyPI package

The iLOrest PyPI package is an official
<a href="https://pypi.org/project/ilorest" target="_blank">PyPI project</a>.

### Requirements

- Python3 is required prior to the installation.
- ARM based servers: Verify in the iLOrest [Changelog](../changelog/) section
that the iLOrest PyPI package is supported on this architecture.
- Absence of the
  [DMTF's Python Redfish Library](/docs/redfishclients/python-redfish-library/installationguide/#pip-install)

### Installation methods

1. Remote installation<br>
     `pip install ilorest`
2. Local installation
   1. Download the package(s) from the <a href="https://pypi.org/project/ilorest/#files" target="_blank">PyPI site</a>
   2. Deploy<br>
      `pip install ilorest-x.x.x.x.tar.gz`<br>
      or<br>
      `pip install ilorest-x.x.x.x.whl`<br>

:::info NOTE

The above commands install two packages:

- `ilorest`
- `python-ilorest-library`

:::

### Uninstalling the iLOrest PyPI package

Use the following command to completely uninstall the package:

`pip uninstall ilorest python-ilorest-library`

## Starting the RESTful Interface Tool

### Microsoft Windows

1. Click the **Start** menu.
2. Click **Hewlett Packard Enterprise** > **RESTful Interface Tool**.
3. Right-click the **RESTful Interface Tool** prompt,
   and then click **Run as Administrator**.

### Linux

1. Open a terminal window.
2. Run the following command to start interactive
   mode: `/usr/sbin/ilorest`

### MAC

1. Open a terminal window.
2. Run the following command as an administrator to start
   interactive mode: `/Applications/ilorest`

### VMware ESXi

1. Open a terminal window and install ilorest component.
2. Run the following command as an administrator to start
   interactive mode: `/opt/ilorest/bin/ilorest.sh` for
   ESXi 8.0 and `/opt/tools/ilorest` for ESXi 7.0
