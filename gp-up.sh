#!/bin/sh

globalprotect connect
if [ $? -ne 0 ]; then
    echo "Failed to connect to GlobalProtect."
    exit 1
fi
echo "Connected to GlobalProtect."
