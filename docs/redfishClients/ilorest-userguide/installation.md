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

Read the following requirements before installing iLOrest on an operating system:

- iLOrest is supported when deployed for
  [local/in-band](/docs/redfishservices/ilos/supplementdocuments/vnic#in-band-management)
  management on the following servers :
  - HPE Gen9 or greater servers with an x86 or ARM64 architecture and
    a supported Operating System.
  
- Supported Operating Systems for
  [local/in-band](/docs/redfishservices/ilos/supplementdocuments/vnic#in-band-management)
  management:
  - Microsoft Windows Server 2016
  - Microsoft Windows Server 2019
  - Microsoft Windows Server 2022
  - Microsoft Windows Server 2025
  - macOS: 14, 15
  - Ubuntu x64/Arm64: 22.xx, 24.xx
  - Debian x64/Arm64: 11, 10, 9
  - RHEL x64/Arm64: 10.x, 9.x, 8.x
  - SUSE x64/Arm64: 15SPx, 12SPx

- For [remote/out-of-band](/docs/redfishservices/ilos/supplementdocuments/vnic#out-of-band-management)
  management, iLOrest can be installed on any computer, including servers and personal computers,
  and running Microsoft Windows, MacOS or Linux.

- HPE Gen9 or later servers with or without an OS installed can be managed by iLOrest from remote.

- The following iLO firmware versions can be managed locally or from remote:
  - HPE iLO 7: 1.11.00 or later.
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
to install iLOrest in Gen12/iLO 7 operating systems for
[in-band](/docs/redfishservices/ilos/supplementdocuments/vnic#in-band-management)
management.
{%/admonition %}

- Linux only: Most Linux operating systems have `/tmp`
mounted with `noexec` by default.
Before running HPE iLOrest, the file systems table must be
configured so that `/tmp` is mounted with `exec`.
Use `mount -o remount,exec /tmp` to remount `/tmp` in `exec` mode.

## Installing the iLOrest ESXi package

### New installation

To install for the first time iLOrest on supported ESXi versions,
download the component bundle from
<a href="https://vibsdepot.hpe.com/hpe" target="_blank">vibsdepot</a>.
iLOrest component bundles are located in folders similar to
`monthYear/esxi-XYZ-bundles` and packaged in a `.zip` file like
`ilorest-component_ABC.<ilo.rest.ver.sion>-*.zip`.

Perform the following steps to install the component bundle:

1. Copy the component bundle from the
  <a href="https://vibsdepot.hpe.com/hpe" target="_blank">vibsdepot</a>
   to the ESX server.
   Place the file in a location accessible via the ESX console shell.
   In this example, we use `/tmp` as the target location.

   The following command copies an iLOrest component bundle
   from a local system to an ESX server located with `10.10.10.10`:

   `scp ilorest-component_800.6.0.0.44-1OEM.802.0.0.22380479_24626604.zip root@10.10.10.10:/tmp`

1. Log into the ESX server as a privileged user
   and issue the following command with the full path to the file:

   `esxcli software component apply -d {Component_File}`

   With the above component name, this would be:

   `esxcli software component apply -d /tmp/ilorest-component_800.6.0.0.44-1OEM.802.0.0.22380479_24626604.zip`

{% admonition type="info" name="Note" %}

- Depending on the certificate used to sign the component bundle, you may need to
  change the host acceptance level. To do this, use the following command:

  `esxcli software acceptance set --level=<level>`.

- Also, depending on the type of component bundle being installed, you may have to put
  ESX into maintenance mode.  This can be done through the VI Client, or by
  adding the `--maintenance-mode` option to the above `esxcli` command.

{% /admonition %}

### Upgrade installation

You can use the same command as for an initial installation to upgrade
iLOrest on ESXi:

`esxcli software component apply -d /full/path/to/ilorest-component`

### Uninstalling the iLOrest ESXi package

Use the following command to completely uninstall the package:

`esxcli software component remove -n ilorest-component`
  
## Installing the iLOrest PyPI package

The iLOrest PyPI package is an official
<a href="https://pypi.org/project/ilorest" target="_blank">PyPI project</a>. You can use this
package in operating systems like MacOS or Ubuntu that don't have dedicated packages in the
<a href="https://github.com/HewlettPackard/python-redfish-utility/releases/latest" target="_blank">GitHub release location</a>.

### Requirements

- Python3 is required prior to the installation.
- ARM based servers: Verify in the [Changelog](changelog/) section
if/when the iLOrest PyPI package is supported on this architecture.
- Absence of the
  [DMTF's Python Redfish Library](/docs/redfishclients/python-redfish-library/installationguide/#pip-install).
  This restriction is needed because DMTF's Python Redfish library cannot co-exist with the
  HPE Python iLOrest library, part of this PyPI package.

### Installation methods

The following two methods install the following Python packages: `ilorest` and `python-ilorest-library`.

1. Installation from remote:<br>
     `pip install ilorest`
2. Local installation. Refer the to the
   [offline installation](#installing-ilorest-pypi-offline):
   pargraph for more detail:
   1. Download the package(s) from the <a href="https://pypi.org/project/ilorest/#files" target="_blank">PyPI site</a>
   2. Deploy<br>
      `pip install ilorest-x.x.x.x.tar.gz`<br>
      or<br>
      `pip install ilorest-x.x.x.x.whl`<br>

{% admonition type="success" name="Tip" %}

If you install the iLOrest PyPI package on an HPE iLO 7 based server (or later), and want to
[in-band manage](/docs/redfishservices/ilos/supplementdocuments/vnic#in-band-management)
seamlessly the underlying local iLO, you have to create an
[iLOrest application account](/docs/redfishservices/ilos/supplementdocuments/securityservice#application-accounts).

The following example performs this task, using an already created user with the minimum
[required privileges](/docs/redfishservices/ilos/supplementdocuments/securityservice#application-account-privileges).

Refer to this paragraph for more information about
[application account management](/docs/redfishservices/ilos/supplementdocuments/securityservice#managing-application-accounts).

{% tabs %}
{% tab label="iLOrest App Account creation" %}

```shell
ilorest login --no_app_account -u admin_user -p password
ilorest appaccount create --self -u ilorest-appuser -p password

# Verify account has been created
ilorest appaccount exists --self
Application account exists for this host application.
```

{% /tab %}
{% /tabs %}

For more details on using iLOrest as a PyPI package, refer to the blog <a href="https://developer.hpe.com/blog/ilorest-as-a-pypi-package/" target="_blank">iLOrest as a PyPI Package</a>.

{% /admonition %}

### Uninstalling the iLOrest PyPI package

Before un-stalling the iLOrest PyPI package, you may want
to remove its associated
[application account](/docs/redfishservices/ilos/supplementdocuments/securityservice#application-accounts).
This is optional and can omitted
if you want to re-install it later, and beneficiate again of in-band management.

The following example extracts the `ApplicationID` of the `iLORest`
host application. Then, it deletes the corresponding application account.

```shell

ilorest appaccount details --hostappid all --json | \
        jq '.[] | select(.ApplicationName == "iLORest") | .ApplicationID'
"**00b5"

ilorest appaccount delete --hostappid 00b5
ilorest logout

```

Use the following command to completely uninstall the iLOrest PyPI package:

`pip uninstall ilorest python-ilorest-library`

## Installing or upgrading to iLOrest 5.2.x / 6.x.x on Debian-based Systems

The `.deb` package for iLOrest was last released as a standalone version (v4.9.0) in March 2024. However, significant enhancements and bug fixes have been introduced in versions 5.2.x and 6.0.x, which are currently distributed via PyPI (Python Package Index).

Perform the following steps to install or upgrade iLOrest as PyPI package using pip3.

### Steps to Install or Upgrade iLOrest using PyPI

- Uninstall any existing `.deb` version:  
`sudo dpkg -r ilorest`  

- Ensure pip3 is installed:  
`sudo apt update`  
`sudo apt install python3-pip`  

- (Optional) Set HTTP/HTTPS Proxy:
If the system is behind a proxy, set the environment variables before proceeding:  
`export http_proxy=http://<HTTP_PROXY_URL>:<PORT>`  
`export https_proxy=http://<HTTPS_PROXY_URL>:<PORT>`

- Install the latest iLOrest from PyPI:  
`sudo pip3 install ilorest`  

## Installing iLOrest PyPI offline

For environments without internet access (Air-Gapped environments),
iLOrest PyPI can be installed offline using pre-downloaded `.whl` (wheel)
and `.tar.gz` source distribution files from PyPI.

### iLOrest PyPI offline installation steps

- On a system with internet access:  
  - Create a clean directory:  
    `mkdir ilorest_offline`  
    `cd ilorest_offline`

  - Download iLOrest and its dependencies using `pip`:  
`pip3 download ilorest`  

    The above command downloads
    `ilorest-\<version\>.whl` or `.tar.gz`
    as well as required dependencies (e.g., `requests`, `jsonpath_rw`, `six`, etc.)  

  - Transfer the entire `ilorest_offline` directory to the target offline system using USB,
    `scp` or other secure methods.

- On the target offline system:

  - Ensure Python 3.6 or later is installed:
    `python --version`

  - Ensure `pip3` is installed:  
    `sudo apt install python3-pip`  

  - Change into the transferred directory:  
    `cd /path/to/ilorest_offline`

  - Install iLOrest and dependencies:  
    `sudo pip3 install --no-index --find-links=. ilorest`  

    with:

    `--no-index` disables PyPI access.  
    `--find-links=.` tells pip to look for dependencies in the current directory.

{% admonition type="info" name="NOTES" %}

- If proxy settings were used on the online system, they are not required for offline installation.  

- You may use a Python virtual environment 
to install iLOrest in an isolated Python environment:
`sudo python -m venv ilorestVenv`
`source ilorestVenv/bin/activate`

{% /admonition %}

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
