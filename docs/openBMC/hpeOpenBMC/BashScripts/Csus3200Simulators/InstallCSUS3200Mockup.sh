#!/usr/bin/sh


# version 0.24

# The source of this file is in FDZ's GitHub at
# git@github.com:donzef/FdzPerso.git
#      BashScripts/Csus3200Simulators/InstallCSUS3200Mockup.sh

# Follow the instructions in
# git@github.com:donzef/FdzPerso.git
#      BashScripts/Csus3200Simulators/README.md

# This script installs a CSUS 3200 mockup demo in a pecific directory
# (See RootDir and TargetDir vars),
# and make it launchable on a specific port different from the default
# one: ex: 8001 instead of 8000

# ToDo:
#      * Guess if we are on Padbol or elsewhere (CIC: ge-hit-hop24-wv)
#      * Automatically save previous version before unzipping new mockup
#        in final TargetDir. Don't go through the '-new' TargetDir!

# Variables
NUMARGS=1
NUMMINARGS=1
MockupFile=$1
StartMockup="start-mockup.py"
# Uncomment the following 2 lines to install on Padbol:
RootDir="/cygdrive/c/demos/CSUS-3200-InCIC-Geneva/CSUS-3200"
TargetDir="${RootDir}/CSUS3200-Simulator"
# Uncomment the following 2 lines to install on csusmockups:
#RootDir="/cygdrive/c/kits/"
#TargetDir="${RootDir}/CSUS-3200-new"


# Functions
function Usage() {
  echo -e "Usage: $0 Input .zip hpe-csus-3200-mfw-gui-2024.4.zip\n"
  echo -e "Example:\n${0##/*/} hpe-csus-3200-mfw-gui-2024.4.zip\n"
}

# Arg verification
if [ $# -ne  $NUMARGS -a $# -ne $NUMMINARGS ] ; then
   Usage
   exit 1
fi

# Verify that input file is valid
# It must be a real .zip file (Zip archive data)
cd $RootDir
# TBD

# Unzip in target dir
rm -r $TargetDir &>/dev/null
echo -e -n "Unzip $MockupFile in ${TargetDir}...." 
unzip -d ${TargetDir} $MockupFile  &>/dev/null
echo "Done"

# Cleanup
mv ${TargetDir}/${MockupFile%%\.zip}/* $TargetDir
rmdir ${TargetDir}/${MockupFile%%\.zip} 

# Fix start-mockup.py
echo "Fixing start-mockup.py"
cd $TargetDir
chmod a+w dist/index.js
cp start-mockup.py start-mockup-ori.py
# Change "localhost" into "127.0.01" 
sed -i -e 's?\(webUrl.*\)localhost?\1127.0.0.1?g' start-mockup.py
# Insert a sleep time before opening the web browser
sed -i -e '/webbrowser.open_new(webUrl)/i\
  time.sleep(3)

' start-mockup.py

# Modification of the start-mockup.py script
# so it patches the GUI with the Redfish port supplied 
# as argument (rfPort).

var="$(cat <<_EoF_
\\
import re\\
GUIfilename = 'index.js'\\
os.chdir('dist')\\
with open(GUIfilename, 'r', encoding='utf-8') as file:\\
    content = file.read()\\
old_string = 'http://localhost:\\\d+"'\\
new_string = "http://localhost:" + rfPort + '"'\\
\\
modified_content = re.sub(old_string, new_string, content)\\
with open(GUIfilename, 'w', encoding='utf-8') as file:\\
    file.write(modified_content)\\
os.chdir('..')\\
_EoF_
)"

# Insert "$var" after 
sed -i -e '/rfPort = .*800/a\
\
'"$var"'\
' $StartMockup

echo "Ready to launch the mockup with (for example):"
echo "cd ${TargetDir}"
echo "py start-mockup.py 8081 8001"

