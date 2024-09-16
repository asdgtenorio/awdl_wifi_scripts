#!/usr/bin/env bash

echo "****************************************"
echo "This script will disable Apple Wireless Direct Link (AWDL). This will impact Airdrop, using your iPad as a secondary display, and Continuity Camera."
echo "****************************************"
read -p "You will be prompted for your admin password. Do you want to continue? y/n" choice

case $choice in
[yY]* ) sudo echo "Installing disable_awdl.sh in your tmp directory. This will run in the background." ;;
[nN]* ) exit ;;
*) exit ;;
esac

curl -s https://raw.githubusercontent.com/asdgtenorio/awdl_wifi_scripts/main/disable_awdl.sh > /tmp/disable_awdl.sh
chmod u+x /tmp/disable_awdl.sh

sudo bash /tmp/disable_awdl.sh > /dev/null &
