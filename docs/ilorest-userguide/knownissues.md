---
seo:
  title: Known issues
toc:
  enable: true
  maxDepth: 2
disableLastModified: true
---

# Known Issues

The following are known issues present in the current release of ilorest. If available, a link to the relevant CA has been included:

Issue | CA | Issue Description  | Workaround
---------- |---------- |---------- |---------- 
Chif login error out in SLES 12 SP4. |[SID7946](https://si.its.hpecorp.net/si/?ObjectType=52&Object=SID7946).| Logging into iLO in SLES 12SP4 may error out. | Use remote or vnic login.
--proxy global login option does not work.|NA| --proxy global option does not work. | Configure and use system proxy at OS level.
Certificate login in ESXi 7.0 does not work.|NA| On ESXi 7.0 server, user certificate login does not work.| Use remote login or user credentials login.
Updating recovery set on SLES 12 SP5 may fail with iLOInitialError.|[SID7996](https://si.its.hpecorp.net/si/?ObjectType=52&Object=SID7996).|On SLES 12 SP5, iLOInitialError may occur when trying to update recovery set FW.| Use remote or vnic login or GUI to update the recovery set.
Serverclone load error when input file is encrypted.|NA |Serverclone load command errors when input configuration file is encrypted.|Use unencrypted input file for serverclone load.
Directory group clone does not work with serverclone command.|NA |Serverclone save, create a directory grp, serverclone load to old config and directory group is not erased.|Directory Groups need to be manually created/erased.
UnifiedCertificate may error out when generating certificate.|NA |UnifiedCertificate command is future replacement for certificate command.| Use Certificate command instead to generate certificate and get certificate.
iscsiconfig --list may error out with 'Name' not found|NA |This may happen due to iscsi is added as second attempt onwards.|Use rawget command to list the iscsi attempts. 


