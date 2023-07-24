---
seo:
  title: Installation
toc:
  enable: true
  maxDepth: 3
disableLastModified: true
---

# HPE iLOrest installation procedure

## Requirements

<!-- This paragraph needs complete and deep review -->

The requirements for the managed server are as follows:

- Local management: Gen9 or greater server with a Windows OS or Linux OS (64&#8209;bit) installed.
  
  <!-- Is the following note valid ? -->
  :::info NOTE

  Note: On a fresh Microsoft Windows installation, the CHIF driver needs to be installed which is available in Service Pack for ProLiant (SPP).
  
  :::

<!-- What about RHEL 9 and ARM based servers ? -->
- Supported Operating Systems for local management: Windows 2019, 2016, 2012R2, RHEL 7.x, 8.x, SUSE 15SPx, 12SP3, MAC, Debian 9, 10  
- Remote management: HPE Gen9 or later servers with or without an OS installed.
- iLO 5: 1.20 or later
- iLO 4: 2.10 or later
- On a Linux systems, the `/tmp` folder must be configured with execute permission. If the `/tmp` folder does not allow code execution, HPE iLOrest will not start. It is possible to work around this requirement by exporting an environment variable pointing to another location. `$ export TMPDIR=/some/other/location`. You can assign a new location to any of the following environment variables: `TMPDIR`, `TEMP`, `TMP`.

## Updating the JSON schemas used by HPE iLOrest

<!-- Need practical examples to illustrate the topic -->
Latest Schemas are automatically updated when using iLO 2.10 or later and the RESTful Interface Tool 2.4.0 or later.  
Note: When using an earlier version of iLO or an earlier version of the RESTful Interface Tool, you must manually get the latest JSON schemas from the SPP located in the `hp_restful_api` directory. Copy the schema files to the appropriate directory: <!-- What is this "appropriate directory" ? -->

## Installing the RESTful Interface Tool

Perform the following steps to install the tool in a Microsoft Windows or Linux OS:

- Download HPE iLOrest for your operating system from <a href="https://www.hpe.com/us/en/servers/restful-api.html" target="_blank">iLO Restful API Ecosystem</a> or directly from [Github Releases](https://github.com/HewlettPackard/python-redfish-utility/releases/latest)

  :::success TIP

  Debian, Ubuntu, Mac and ARM versions are available from <a href="https://github.com/HewlettPackard/python-redfish-utility/releases/latest" target="_blank">Github Releases</a> URL.

  :::

- For local management, deploy the package on the managed server's OS. For remote management, install the package on a laptop or server that has network access to the managed server network.
- Linux only: Most operating systems have `/tmp` mounted with `noexec` by default. Before running HPE iLOrest, the file systems table must be configured so that `/tmp` is mounted with `exec`. Use `mount -o remount,exec /tmp` to remount `/tmp` in `exec` mode.

## Starting the RESTful Interface Tool

### Microsoft Windows

1. Click the **Start** menu.
2. Click **Hewlett Packard Enterprise** > **RESTful Interface Tool**.
3. Right-click the **RESTful Interface Tool** prompt, and then click **Run as Administrator**.

### Linux

1. Open a terminal window.
2. Run the following command to start interactive mode: `/usr/sbin/ilorest`

### MAC

1. Open a terminal window.
2. Run the following command as an administrator to start interactive mode: `/Applications/ilorest`

### VMware ESXi

1. Open a terminal window and install ilorest component.
2. Run the following command as an administrator to start interactive mode: `/opt/ilorest/bin/ilorest.sh` for ESXi 8.0 and `/opt/tools/ilorest` for ESXi 7.0
