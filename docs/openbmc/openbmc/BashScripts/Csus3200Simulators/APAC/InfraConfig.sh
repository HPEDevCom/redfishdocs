#!/usr/bin/bash

# This script contains the configuration info
# for running companion scripts:
#      * CleanupRmcSimul.sh
#      * CreateRMC3200Simulators.sh

# version 0.1

# Variables
Kit="hpe-csus-3200-mfw-gui-2024.4.zip"
BundleVersion="2024.4"
RootDir="Rmc3200Simul"
Original="${RootDir}-${BundleVersion}-original"
IP_Simul="10.85.235.132" 
StartId="775"
EndId="794"
GuiPortPrefix="48"
RedfishMockupPortPrefix="47"
Venv="Python3200SimulVenv"
