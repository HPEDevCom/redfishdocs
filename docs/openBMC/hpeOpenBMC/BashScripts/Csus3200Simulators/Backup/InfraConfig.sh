#!/usr/bin/bash

# This script contains the configuration info
# for running companion scripts:
#      * CleanupRmcSimul.sh
#      * CreateRMC3200Simulators.sh

# version 0.21

# Variables
RmcUser="administrator"
RmcPasswd="foo"
#Kit="MfwGui-1.10.342.zip"
Kit="MfwGui-1.30.10.zip"

#BundleVersion="1.10.342"
BundleVersion="1.30.10"

RootDir="Rmc3200Simul"
Original="${RootDir}-${BundleVersion}-original"
#IP_Simul="192.168.1.46"
IP_Simul="notebooks3.hpedev.io"
StartId="776"
EndId="810"
GuiPortPrefix="48"
RedfishMockupPortPrefix="47"
Venv="Python3200SimulVenv"
