#!/bin/sh
. /etc/rc.common

echo "                                                                  "
echo "Please type the password of \"root\" to Uninstall ..."
FROM=`dirname "$0"`

echo "Uninstalling Script and Utility ..."
sudo killall -c TP-LINK\ Wireless\ Configuration\ Utility
sudo killall -c StatusBarApp
sleep 2

echo "Uninstalling UI..."
sudo rm -rf /Library/LaunchAgents/Wlan.Software
sudo rm -rf /Library/LaunchAgents/Wlan.Software.plist

sudo rm -rf /Applications/TP-LINK\ Wireless\ Configuration\ Utility.app
sudo rm -rf /System/Library/CoreServices/StatusBarApp.app
sudo rm -rf ~/Library/Preferences/com.realtek.utility.wifi.plist
sudo rm -rf ~/Library/Preferences/com.realtek.utility.wifi11n.plist

echo "Removing Driver..."
sudo kextunload /System/Library/Extensions/RtWlanU1827.kext
sudo rm -rf /System/Library/Extensions/RtWlanU1827.kext

echo "Removing Pkg"
sudo rm -rf /private/var/db/receipts/com.realtek.*
sudo rm -rf /private/var/db/receipts/com.Wlan.*.*.pkg.bom
sudo rm -rf /private/var/db/receipts/com.Wlan.*.*.pkg.plist
sudo rm -rf /private/var/db/receipts/com.wlan.*.*.pkg.bom
sudo rm -rf /private/var/db/receipts/com.wlan.*.*.pkg.plist

sudo rm -rf /private/var/db/receipts/com.Wireless*.pkg.bom
sudo rm -rf /private/var/db/receipts/com.Wireless*.pkg.plist

echo "Uninstall Complete."
