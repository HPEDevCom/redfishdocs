---
seo:
  title: Installation
toc:
  enable: true
  maxDepth: 3
disableLastModified: true
---

# Installation

## Requirements

The requirements for the server, which you will manage with the tool, are as follows:

- Local management: Gen9 or greater server with a Windows OS or Linux OS (64&#8209;bit) installed.  
  Note: On a fresh windows installation, Chif driver need to be installed which will be available in Service Pack for ProLiant(SPP). 
- Operating System: Windows 2019, 2016, 2012R2, RHEL 7.x, 8.x, SUSE 15SPx, 12SP3, MAC, Debian 9, 10  
- Remote management: Gen9 or greater server with or without an OS installed.
- iLO 5: 2.10 or later
- iLO 4: 2.10 or later
- Before you run the tool on a Linux system, the `/tmp` folder must be configured to allow code to execute. If the `/tmp` folder is set to *no-execution*, the tool will not run. You can work around this by exporting an environment variable to point to another location. `$ export TMPDIR=/some/other/location` You can assign a new location to any of the following environment variables: TMPDIR, TEMP, TMP.

### Updating the JSON schemas used by the RESTful Interface Tool
Latest Schemas are automatically updated when using iLO 2.10 or later and the RESTful Interface Tool 2.4.0 or later.  
Note: When using an earlier version of iLO or an earlier version of the RESTful Interface Tool, you must manually get the latest JSON schemas from the SPP located in the `hp_restful_api` directory. Copy the schema files to the appropriate directory:

### Installing the RESTful Interface Tool

Perform the following steps to install the tool in a Windows OS or Linux OS.  
Note: Debian, Ubuntu and Mac Versions are available from [Github Releases](https://github.com/HewlettPackard/python-redfish-utility/releases/latest) URL.

1. Download the RESTful Interface Tool for your operating system from [iLO Restful API Ecosystem](https://www.hpe.com/us/en/servers/restful-api.html) or directly from [Github Releases](https://github.com/HewlettPackard/python-redfish-utility/releases/latest)
2. Install the installation package on the server you prefer to manage for local management. For remote management, install the package on a laptop or server that has access to the managed server network.
3. (Linux only) Most operating systems have `/tmp` mounted with `noexec` by default. Before running the RESTful Interface Tool, the file systems table must be configured so that `/tmp` is mounted with `exec`:
   `mount -o remount,exec /tmp`

### Starting the RESTful Interface Tool

#### Windows
1. Click the **Start** menu.
2. Click **Hewlett Packard Enterprise** > **RESTful Interface Tool**.
3. Right-click the **RESTful Interface Tool** prompt, and then click **Run as Administrator**.

#### Linux
1. Open a terminal window.
2. Run the following command as an administrator to start interactive mode: `/usr/sbin/ilorest`
