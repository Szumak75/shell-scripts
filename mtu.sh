#!/bin/sh
#
#  mtu.sh
#  Author : Jacek 'Szumak' Kotlarski --<szumak@virthost.pl>
#  Created: 4.03.2025, 08:53:54
#  
#  Purpose: This script is used to find the MTU (Maximum Transmission Unit) of the network interface.

if [ $# -eq 0 ]; then
  echo "Usage: $0 <IPv4 address>"
  exit 1
fi

# Get the ip address from the first argument
ip="$1"

# Set initial packet size
packet_size=1100

# Find the maximum MTU
while true; do
  ping -4 -c 1 -M do -s $packet_size $ip > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo "Discovered MTU: $((packet_size + 28 - 2))"
    break
  fi
  packet_size=$((packet_size + 2))
done

# #[EOF]#######################################################################
