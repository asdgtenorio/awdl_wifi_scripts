#!/usr/bin/env bash

set -euo pipefail

echo "****************************************"
echo "This script will disable Apple Wireless Direct Link (AWDL). This will impact Airdrop, using your iPad as a secondary display, and Continuity Camera."
echo "****************************************"
read -p "You will be prompted for your admin password. Do you want to continue? y/n" choice

case $choice in
[yY]* ) sudo echo "Stopping disable_awdl.sh from running in the background." ;;
[nN]* ) exit ;;
*) exit ;;
esac

sudo pkill -f /tmp/disable_awdl.sh
sudo ifconfig awdl0 up
