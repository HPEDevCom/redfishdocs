# CSUS 32200 Mockup/Simulator installation

Installation instructions on `sdfmockups`/`csusmockups` (`10.4.25.50`) and/or
on FDZ's laptop (`Padbol`).

## Installation in CIC

- Start OpenVPN to HPE Customer Innovation Center (Creds in KeePass / CIC OpenVPN / `epc-fdo`)
- From `Padbol`, push latest version of mockup and installation script to
  `csusmockups` (10.4.25.50)

  ```bash
  cd /cygdrive/c/demos/CSUS-3200-InCIC-Geneva/CSUS-3200
  scp hpe-csus-3200-mfw-gui-2024.4.zip epc-fdo@sdfmockups:/cygdrive/c/kits/.
  scp /Git-Repo/CloneOfFdzPerso/BashScripts/Csus3200Simulators/InstallCSUS3200Mockup.sh  epc-fdo@sdfmockups:bin/.

  ssh epc-fdo@sdfmockups
  cd bin
  vi InstallCSUS3200Mockup.sh
  # Comment out lines corresponding on Padbol and uncomment the following 
  RootDir="/cygdrive/c/kits/"
  TargetDir="${RootDir}/CSUS-3200-new"  
  ```

- Test if new mockup works from RDP session:
  - Open RDP session to `csusmockups` (user: `demonet\epc-fdo`)
  - Start Cygwin Terminal
  - Verify string "Compute Scale Up 3200" is displayed above Sign-In box
  
  ```bash
     cd /usr/kits/CSUS-3200-new # corresponding to /cygdrive/c/kits/CSUS-3200-new
     py start-mockup.py 8082 8002
  ```

- If working, kill browser and the two PowerShell windows
- Rename temporary `TargetDir` to final target directory

  ```bash
    cd /usr/kits
    mv CSUS-3200 CSUS-3200-2024-2
    mv CSUS-3200-new CSUS-3200
  ```

- Test from Desktop if it works
  
```bash
  # Double click on CSUS3200-ClickMe.bat icon
```

- Test live: register demo in [Demo Portal](https://hpedemoportal.ext.hpe.com?demoid=9304) and test live.
