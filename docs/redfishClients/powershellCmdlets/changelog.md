---
seo:
  title: HPE PowerShell Cmdlets Change Log
toc:
  enable: true
  maxDepth: 2
disableLastModified: true
---

# HPE iLO Cmdlets change log

## Cmdlets version 4.x

### New features and Cmdlets

**FDZ: Not sure how to interpret this sentence**: The following changes have been made from version 2.x to 3.x:

- The output of the connection object is modified to support interoperability.
- Introduced two new Cmdlets for modifying and getting the log configuration settings. (**TBD: Need to name them**)

### Fixes

## Cmdlets version 3.x

### New features and Cmdlets

- The connection object created using the `HPEiLOCmdlets` module can be used across other modules such as the `HPEBIOSCmdlets`. This allows a single session to be established on a particular iLO and the same is used to configure iLO/BIOS settings instead of creating multiple sessions to single iLO. (Version 3.0.0.0 onwards)

### Fixes

TBD

## Cmdlets version 2.x

### New features and Cmdlets

TBD

### Fixes

TBD
