#!/bin/bash
# This script removes all Native Instruments files, software, and drivers.
# https://www.native-instruments.com/en/support/knowledge-base/show/413/how-to-uninstall-native-instruments-software-and-drivers-from-a-mac-os-x-computer/
read -p "Are you sure you want to uninstall all Native Instruments software and drivers?" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  echo
  echo "Uninstalling..."
  echo "Please enter your root user credentials below."
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
  sudo rm -rfv /Library/Audio/MIDI\Devices/Native\ Instruments
  sudo rm -rfv ~/Library/Application\ Support/Native\ Instruments
  if [[ ${OS_Version} == 10.11 ]]; then
    echo "Operating System does not require disk utility to repair permissions."
  else
    echo "Repairing Disk Permissions"
    echo
    sudo diskutil repairPermissions /
  fi
fi
read -p "Reboot?" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  sudo shutdown -r now
fi
echo
echo "EXIT"
exit
