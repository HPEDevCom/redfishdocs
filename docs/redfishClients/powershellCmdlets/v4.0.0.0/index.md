---
excludeFromSearch: true
seo:
  title: HPE iLO Cmdlets v4.0.0.0
disableLastModified: false
toc:
  enable: false
---

# HPE iLO Cmdlets version 4.0.0.0

The iLO cmdlets include help support similar to other PowerShell Cmdlets help. To display the exhaustive list of the iLO Cmdlets, type:

```PowerShell
help *hpeilo*
```

:::success TIP
You can also use the following command to display the iLO cmdlets list:

```PowerShell
Get-Command -Module HPEiLOCmdlets
```

:::

To display complete help for a specific cmdlet, type:

```PowerShell
help <cmdlet> -Full
where <cmdlet> is the name of the iLO Cmdlet
```

The HPE iLO Cmdlets support the PowerShell `Update-Help` feature. This command retrieves the most current help files from an HPE website and puts them in the correct location on your system.
