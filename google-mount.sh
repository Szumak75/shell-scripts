#!/bin/bash
#
# This script is used to mount/unmount Google Drive on Linux
# using google-drive-ocamlfuse from the following project:
# https://github.com/astrada/google-drive-ocamlfuse

control_c()
{
        echo -n "disconnecting from GoogleDrive..."
        fusermount -u ~/GoogleDrive
        echo "... done"
        exit 0
}

trap control_c SIGINT

echo checking for GoogleDrive mount point...

if [ ! -d ~/GoogleDrive ]; then
    echo GoogleDrive folder is missing
    exit 1
fi

echo -n "Connecting to GoogleDrive..."
google-drive-ocamlfuse ~/GoogleDrive
sleep 3
echo "...~/GoogleDrive"
echo ""
echo "[ctrl]-[c] to disconnect"

while [ 1 ]
do
        sleep 10

done

