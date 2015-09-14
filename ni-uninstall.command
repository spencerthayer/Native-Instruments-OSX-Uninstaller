#!/bin/bash
# This script removes all Native Instruments files, software, and drivers.
# https://www.native-instruments.com/en/support/knowledge-base/show/413/how-to-uninstall-native-instruments-software-and-drivers-from-a-mac-os-x-computer/
read -p "Are you sure you want to uninstall all Native Instruments software and drivers?" -n 1 -r
echo
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo
  echo "Uninstalling..."
  sudo rm -rfv /Applications/Native\ Instruments
  sudo rm -fv /Library/Preferences/com.native-instruments.*.plist
  sudo rm -rfv /Library/Audio/Plug-Ins/Components/Maschine*
  sudo rm -rfv /Library/Audio/Plug-Ins/VST/Maschine*
  sudo rm -rfv /Library/Application\ Support/Digidesign/Plug-Ins/Maschine*
  sudo rm -rfv /Library/Application\ Support/Avid/Audio/Plug-Ins/Maschine*
  sudo rm -rfv /Library/Application\ Support/Native\ Instruments
  sudo rm -fv ~/Library/Preferences/com.native-instruments.*.plist
  sudo rm -rfv ~/Library/Application\ Support/Native\ Instruments
  sudo rm -rfv /System/Library/Extensions/NIUSB*.kext
  echo
  echo "Repairing Disk Permissions"
  echo
  sudo diskutil repairPermissions /
  echo
  echo "EXIT"
fi
exit
