---
markdown:
  toc:
    hide: false
    depth: 2
  lastUpdateBlock:
    hide: true
breadcrumbs:
  hide: true
seo:
  title: iLOrest installation
---

# HPE iLOrest installation procedure

## Requirements

<!-- This paragraph needs complete and deep review -->

The requirements for the managed server are as follows:

- Local/[in-band](/docs/redfishservices/ilos/supplementdocuments/vnic#in-band-management)
  management: Gen9 or greater server with a Windows OS or
  Linux OS installed.
  
<!-- What about RHEL 9 and ARM based servers ? -->
- Supported Operating Systems for local management:
  Windows 2022, 2019, 2016, RHEL 8.x, 9.x, 9.x ARM64,
  SUSE 15SPx, 12SP3, MAC, Debian 9, 10, 10 ARM64.
- Remote/[out-of-band](/docs/redfishservices/ilos/supplementdocuments/vnic#out-of-band-management)
  management: HPE Gen9 or later servers with
  or without an OS installed.
- HPE iLO 7: 1.11 or later.
- HPE iLO 6: 1.05 or later.
- HPE iLO 5: 1.20 or later.
- On a Linux systems, the `/tmp` folder must be configured
  with execute permission. If the `/tmp` folder does not allow code execution,
  HPE iLOrest will not start. It is possible to work around this
  requirement by exporting an environment variable pointing to
  another location. `$ export TMPDIR=/some/other/location`.
  You can assign a new location to any of the following
  environment variables: `TMPDIR`, `TEMP`, `TMP`.

## Installing iLOrest on Linux and Windows

Perform the following steps to install the tool in a
Microsoft Windows or Linux OS:

- Download the latest HPE iLOrest package from
<a href="https://github.com/HewlettPackard/python-redfish-utility/releases/latest" target="_blank"> Github Releases</a>
or install the PyPI package as instructed in the next paragraph.

- For local management (in-band), deploy the package on the managed
server's OS. For remote management (out-of-band), install the
package on a laptop or server that has network access
to the managed server network.
{% admonition type="success" name="Tip" %}
Follow these
[instructions](/docs/redfishservices/ilos/supplementdocuments/securityservice#installing-hpe-host-applications)
to install iLOrest in Gen12/iLO 7 systems.
{%/admonition %}

- Linux only: Most Linux operating systems have `/tmp`
mounted with `noexec` by default.
Before running HPE iLOrest, the file systems table must be
configured so that `/tmp` is mounted with `exec`.
Use `mount -o remount,exec /tmp` to remount `/tmp` in `exec` mode.

## Installing the iLOrest ESXi package

### New installation

Download the component bundle from <a href="https://vibsdepot.hpe.com" target="_blank">vibsdepot</a>

    1. Copy the component bundle from "vibsdepot" to the ESX server.  Technically, you can
           place the file anywhere that is accessible to the ESX console shell, 
           but for these instructions, we'll assume the location is in '/tmp'.

           Here's an example of using the Linux 'scp' utility to copy the file
           from a local system to an ESX server located at 10.10.10.10:
             scp ilorest-component_800.6.0.0.44-1OEM.802.0.0.22380479_24626604.zip root@10.10.10.10:/tmp

    2. Issue the following command (full path to the file must be specified):
              esxcli software component apply -d {Component_File}
       
           In the example above, this would be:
              esxcli software component apply -d /tmp/ilorest-component_800.6.0.0.44-1OEM.802.0.0.22380479_24626604.zip

{% admonition type="info" name="Note" %}
Depending on the certificate used to sign the VIB, you may need to
change the host acceptance level. To do this, use the following command:
`esxcli software acceptance set --level=<level>`.

Also, depending on the type of VIB being installed, you may have to put
ESX into maintenance mode.  This can be done through the VI Client, or by
adding the `--maintenance-mode` option to the above `esxcli` command.
{% /admonition %}

### Upgrade installation

You can use the same command as for an initial installation:

  {% tabs %}
{% tab label="Example" %}

```shell Example
esxcli software component apply -d /full/path/to/ilorest-component
```
  
  {% /tab %}
  {% /tabs %}
### Uninstalling the iLOrest ESXi package

Use the following command to completely uninstall the package:

  {% tabs %}
{% tab label="Example" %}

```shell Example
esxcli software component remove -n ilorest-component
```
  
  {% /tab %}
  {% /tabs %}
  
## Installing the iLOrest PyPI package

PyPI package can be used on distros like MAC, Ubuntu.

The iLOrest PyPI package is an official
<a href="https://pypi.org/project/ilorest" target="_blank">PyPI project</a>.

### Requirements

- Python3 is required prior to the installation.
- ARM based servers: Verify in the iLOrest [Changelog](changelog/) section
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

{% admonition type="info" name="NOTE" %}

The above commands install two packages:

- `ilorest`
- `python-ilorest-library`

{% /admonition %}

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
