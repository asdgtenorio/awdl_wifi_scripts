#!/bin/bash

curl -s https://raw.githubusercontent.com/asdgtenorio/awdl_wifi_scripts/main/disable_awdl.sh > ~/disable_awdl.sh
sudo chmod u+x ~/disable_awdl.sh
cd /Library/LaunchDaemons/ && sudo curl -sO https://raw.githubusercontent.com/asdgtenorio/awdl_wifi_scripts/main/org.asdubai.wifi.awdl.plist
sudo sed -i -- "s/YOUR_USERNAME/${USER}/g" /Library/LaunchDaemons/org.asdubai.wifi.awdl.plist
sudo launchctl unload -w /Library/LaunchDaemons/org.asdubai.wifi.awdl.plist 2> /dev/null
sudo launchctl load -w /Library/LaunchDaemons/org.asdubai.wifi.awdl.plist
