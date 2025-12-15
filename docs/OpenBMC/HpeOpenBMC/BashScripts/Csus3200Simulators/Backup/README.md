# CSUS 3200 RMC simulators setup

# The content of this directory is deprecated 
# because we are not using HPE DEV infra anymore.
# Instead, we are using John Reed/Vincent infra
#
Version: 0.1

## Infrastructure

**Development infra**: donze@fdz360g10-2:tmp (lio infra)

### Hardware / VM for 25 students

- 2 CPUs / 12 cores/cpu (24 cores total)
- Memory: 25 GB  (1 GB per simulator)

### Operating system

- Linux OS CentOS / Rocky Linux

## Procedure

- login as a regular user
- mkdir working directory. cd working directory
- copy simulator kit (.zip) as wall as scripts
- Launch `CreateRMC3200Simulators.sh`

**NOTE**: The TLS/SSL certificates (.cert and .key) files in the server directory
are not valid: public cert is expired and private key is not a well-known CA.

It is needed to force the browser ignore the (NET::ERR_AUTHORITY_INVALID) issue
by making a GET toward: https://<ip>:RedfishMockupPort/redfish/v1 (i.e. 47775)
and reload the GUI.
