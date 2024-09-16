#!/bin/bash

sudo launchctl unload -w /Library/LaunchDaemons/org.asdubai.wifi.awdl.plist
sudo rm /Library/LaunchDaemons/org.asdubai.wifi.awdl.plist*
sudo pkill -f /tmp/disable_awdl.sh
sudo pkill -f ~/disable_awdl.sh
sudo rm /tmp/disable_awdl.sh
rm ~/disable_awdl.sh
sudo ifconfig awdl0 up
