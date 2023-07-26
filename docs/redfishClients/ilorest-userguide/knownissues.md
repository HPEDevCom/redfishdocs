---
seo:
  title: Known issues
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Known Issues

The following are known issues present in the current release of iLOrest. If available, a link to the relevant Customer Advisory (CA) has been included:

<!-- FDZ: Removed two lines with HPE internal links to SIDs -->

| Issue | CA | Issue Description | Workaround |
|---|----|---|---|
| `--ilossa` option in `serverclone` command is not supported for HPE iLO 5. It is supported for HPE iLO 6 onwards. | NA | StorageController cloning is not supported by `serverclone` command for HPE iLO 5. | Volumes has to be created using `createvolume`. |
| Certificate login in ESXi 7.0 does not work. | NA | On ESXi 7.0 server, user certificate login does not work. | Use remote login or user credentials login. |
| Directory group clone does not work with `serverclone` command.| NA  | `serverclone save`, creates a directory group, `serverclone load` to old config and directory group is not erased. | Directory Groups need to be manually created/erased. |
