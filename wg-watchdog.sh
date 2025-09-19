#!/bin/bash
#
#  wg-watchdog.sh
#  Author : Jacek Kotlarski --<jacek.kotlarski@bioseco.com>
#  Created: 29.08.2025, 13:33:06
#  
#  Purpose: Watchdog script for WireGuard VPN on TASK
#
# [crontab]
# m h  dom mon dow   command
# * * * * * /opt/bin/wg-watchdog.sh > /dev/null 2>@1

# Check if a specific server can be pinged
if ping -c 3 10.240.1.1 > /dev/null 2>&1; then
    logger -t "wg-watchdog" "WireGuard is working."
else
    logger -t "wg-watchdog" "WireGuard is down. Attempting to restart."
    # Restart the WireGuard interface
    systemctl restart wg-quick@wg0
fi

# #[EOF]#######################################################################
