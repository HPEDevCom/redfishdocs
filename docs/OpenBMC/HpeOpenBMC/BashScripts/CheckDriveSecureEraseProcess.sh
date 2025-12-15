#!/usr/bin/bash
#
# Version 0.1
# Tested against ilo-lio365g11-1 with "HPE MR216i-o Gen11"

# Execute this script as root on 
# the system to secure erase a drive.
# I know this not recommended!

# Make sure the drive to erase is visible (i.e. /dev/sda)
# from the OS.

# Adapt the variables below.

# Variables
ILOREST="/usr/local/bin/ilorest --nologo"
SelectVolume="%24select=Links%2FVolumes"
SelectString="%24select=Operations%2C%20Status%2FState%2C%20Links%2FVolumes"
StorageId="DE040000"
VolumeCollectionURI="/redfish/v1/Systems/1/Storage/${StorageId}/Volumes"
DriveId="1"
DriveURI="/redfish/v1/Chassis/${StorageId}/Drives/${DriveId}"
Drive="/dev/sda"  # JBOD
BYTES="5000"
SecureEraseTarget="${DriveURI}/Actions/Drive.SecureErase/"
SecureErasePayload="{}"
SecureEraseFile="SecureErase.json"
echo "{ \"${SecureEraseTarget}\": {} }" > $SecureEraseFile
CreateJBODFile="CreateJBOD.json"
echo "{ \"${VolumeCollectionURI}\": { \"RAIDType\": \"None\",
              \"Links\": { \"Drives\": [ { \"@odata.id\": \"${DriveURI}\" } ] },
	      \"DisplayName\": \"${StorageId}: JBOD with Drive ${DriveId}\" } }
	      " > $CreateJBODFile




echo "Login locally"
#$ILOREST login


echo "Retrieve Volume URI"
VolumeURI=$($ILOREST rawget --silent "${DriveURI}/?${SelectVolume}" | jq -r '.Links.Volumes[] | ."@odata.id"')


echo "print the first bytes of the Drive:"
od -N $BYTES $Drive
echo


echo "Create a File System on $Drive"
mkfs $Drive

echo "print the first bytes of the Drive:"
od -N $BYTES $Drive
echo

# Mount FS and cd to it
mount $Drive /mnt
cd /mnt

echo -e "Create a file on the FS...."
dd if=/dev/zero of=filename bs=$((1024*1024)) count=$((100*1024))
echo "Done"
echo

echo "Umount FS"
df -k /mnt
cd /tmp
umount /mnt

echo "Delete Volume"
$ILOREST -v rawdelete --silent $VolumeURI


echo "Secure Erase"
$ILOREST -v rawpost $SecureEraseFile 

echo "Catch Operation[]" 
for i in 1 2 3 ; do
    $ILOREST -v rawget --silent "${DriveURI}/?${SelectString}" 
    echo
done

echo "Create JBOD"
$ILOREST -v rawpost $CreateJBODFile

echo "Check content"
od -N $BYTES $Drive


echo "Logout"
#$ILOREST logout
