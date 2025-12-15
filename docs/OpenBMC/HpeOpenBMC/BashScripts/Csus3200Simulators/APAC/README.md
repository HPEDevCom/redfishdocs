# Introduction

This folder contains the scripts used in thang-q.nguyen@hpe.com
infra:

* Jumphost from HPE Intranet: RDP to 15.116.80.181 (Admin1/DeMaria)
* VM with RMC simulator: 10.85.235.132 (root/password)
* RMC simulator location: /csus3200


NOTE: 

* On the Jumpstation, the admin1 cygwin user's home is at C:\cygwin64\home\admin1
* Always start MinTTY in Administrator mode.

## Retrieve scripts to Padbol:

From Jumphost:

* Start MinTTY in Administrator mode
* cd /usr/kits
* scp root@10.85.235.132:/csus3200/\*.sh .
* Open File-Explorer (This PC) toward C:\cygwin64\usr\kits
* Select all files and copy their location (Ctrl-c)
* Navigate to "C on FD..." /Git-Repo/CloneOfFdzPerso/BashScripts/Csus3200Simulators/APAC
* Paste (mouse click droit)

