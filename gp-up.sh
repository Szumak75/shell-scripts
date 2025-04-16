#!/bin/bash

if [ -z "$USERNAME" ]; then
    if [ ! -z "$USER" ]; then
        USERNAME="$USER"
        export USERNAME
    else
        USERNAME=$(whoami)
        export USERNAME
    fi
    
fi

globalprotect connect
if [ $? -ne 0 ]; then
    echo "Failed to connect to GlobalProtect."
    exit 1
fi
echo "Connected to GlobalProtect."
