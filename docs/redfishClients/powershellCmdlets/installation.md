---
markdown:
  toc:
    hide: false
    depth: 3
  lastUpdateBlock:
    hide: true
breadcrumbs:
  hide: true
excludeFromSearch: true
seo:
  title: Installation
---

# Installation

Before installation, ensure that your system meets all requirements for supported operating systems, environments, and hardware. For more information, refer to the Scripting Tools for Windows PowerShell <a href="https://www.powershellgallery.com/packages/HPEiLOCmdlets/4.0.0.0" target="_blank">Package details and Release Notes</a> iLO Cmdlets v4.0.0.0.

## System prerequisites

Install the following before installing Scripting Tools for Windows PowerShell: iLO Cmdlets. The following links provide access to the Microsoft download sites for these applications. Make sure that you read and understand the system requirements and other information provided.

1. Install <a href="https://www.microsoft.com/en-us/download/details.aspx?id=56115" target="_blank">Microsoft .NET Framework 4.7.1</a> or later.

   {% admonition type="info" name="NOTE" %}
   Microsoft .NET Framework must be installed **before** installing Windows Management Framework.
   {% /admonition %}

2. Install Windows Management Framework 3.0 or later (which includes PowerShell 3.0 or later).
  
   - <a href="https://www.microsoft.com/en-us/download/details.aspx?id=34595" target="_blank">Windows Management Framework 3.0</a>
   - <a href="https://www.microsoft.com/en-us/download/details.aspx?id=50395" target="_blank">Windows Management Framework 5.0</a>
   - <a href="https://www.microsoft.com/en-us/download/details.aspx?id=54616" target="_blank">Windows Management Framework 5.1</a>

3. Supported Operating Systems

   Scripting Tools for Windows PowerShell: iLO Cmdlets are supported on the following operating system versions:

   - Microsoft Windows 8.1
   - Microsoft Windows 10
   - Microsoft Windows Server 2012 R2
   - Microsoft Windows Server 2016
   - Microsoft Windows Server 2019
   - Microsoft Windows Server 2022

## Installing from HPE Website

1. Download the Scripting Tools for Windows PowerShell: iLO Cmdlets installer from the <a href="https://www.hpe.com/servers/powershell" target="_blank">HPE website</a>.
2. Close all PowerShell windows before the installation.
3. Run the installer from an account with administrative privileges, by using any standard method of execution (command line or double-click).

It might be necessary to change the execution policy for PowerShell. In PowerShell, enter the following command to get more information and to help you to decide what to select:

```PowerShell
PS C:/> help about_Execution_Policies`
```

Use the following command to see your current execution policy settings:

```PowerShell
PS C:/> Get-ExecutionPolicy -list
```

You can use the following PowerShell command until you determine if it meets your needs:

```PowerShell
PS C:/> Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```

The installation halts and does not complete successfully in case any of the following conditions are detected:

- Attempting to install without .NET 4.7.1 or above.
- Attempting to install without PowerShell 3.0 or above.

## Installing from the PowerShell Gallery

The <a href="https://www.powershellgallery.com" target="_blank">PowerShell Gallery</a> is a marketplace where PowerShell modules or scripts from different vendors, users and individuals are stored. It is a central repository for PowerShell content.

You can choose to install the online version of iLO Cmdlets from the Microsoft PowerShell Gallery with the following command:

`PS C:\> Install-Module -Name HPEiLOCmdlets -Verbose`

Search for string "HPEiLOCmdlets" in the for <a href="https://www.powershellgallery.com" target="_blank">PowerShell Gallery</a> additional details.

## Repairing the iLO cmdlets

Use the installer repair option for the following scenarios:

- The iLO cmdlets module is installed, but PowerShell is not able to import the iLO cmdlets module.
- iLO cmdlets module files, dependent files, or registry entries are corrupted.

Procedure:

1. Open Windows Control Panel.
2. Select Programs and Features.
3. Select Scripting Tools for Windows PowerShell: iLO cmdlets.
4. Click Repair.

## Uninstalling the iLO cmdlets

Use the `Uninstall-Module` Cmdlet to remove the module from your system.

```PowerShell
PS C:/> Uninstall-Module -Name HPEiLOCmdlets -Verbose
```
