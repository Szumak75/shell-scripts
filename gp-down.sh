#!/bin/bash

globalprotect disconnect
if [ $? -ne 0 ]; then
    echo "Failed to disconnect from GlobalProtect."
    exit 1
fi
echo "Disconnected from GlobalProtect."
