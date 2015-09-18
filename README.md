# Native Instruments OSX Uninstaller

Sometimes it is necessary to uninstall and reinstall your Native Instruments software, drivers and files as a solution for technical issues. Unfortunately Native Instruments has removed their official uninstaller for OSX and their online documentation on the process is far from complete or accurate; even worse it's annoying to go through every directory and manually remove every file. This *.COMMAND* script will launch a terminal instance and guide you through the process of removing all Native Instruments software, drivers and files for you. 

## How to Use the Uninstaller

1. Download the [ni-uninstall.command](https://raw.githubusercontent.com/spencerthayer/Native-Instrumetns-OSX-Uninstaller/master/ni-uninstall.command "ni-uninstall.command") file.
2. Double click the [ni-uninstall.command](https://raw.githubusercontent.com/spencerthayer/Native-Instrumetns-OSX-Uninstaller/master/ni-uninstall.command "ni-uninstall.command") file.
3. When prompted to uninstall everything type either **Y** or **y**.
4. You will then be asked for your *root user* password.
5. The command will uninstall all NI files.
6. The command will launch *Disk Utility* and *Repair Permissions*.  

## What does the Uninstaller Do?

In order for the command file to uninstall your NI application it will need *root acess* to remove the following files and folder from your system:

- Macintosh HD > Applications > Native Instruments > *Product Name* (folder)
- Macintosh HD > Library > Preferences > com.native-instruments.*Product Name*.plist
- Macintosh HD > Library > Audio > Plug-ins > Components > *Product Name*.component
- Macintosh HD > Library > Audio > Plug-ins > VST > *Product Name*.vst
- Macintosh HD > Library > Application Support > Digidesign > Plug-ins > *Product Name*.dpm
- Macintosh HD > Library > Application Support > Avid > Audio > Plug-ins > *Product Name*.aaxplugin
- Macintosh HD > Library > Application Support > Native Instruments > *Product Name* (folder)
- Macintosh HD > Users > *Your User Name* > Library > Preferences > com.native-instruments.*Product Name*.plist
- Macintosh HD > Users > *Your User Name* > Library > Application Support > Native Instruments > *Product Name* (folder)
- Macintosh HD > System > Library > Extensions > NIUSB *Product Name*.kext files

If you are uninstalling one of Native Instruments' sample-based programs, i.e. KONTAKT, BATTERY, AKOUSTIK PIANO or ELEKTRIK PIANO, there is also a sample library that can be deleted. It is located in the directory you chose during installation. Please note that it is NOT necessary to uninstall the library in most cases to fix common issues. You can safely leave this folder in place in most cases unless the problem you are having is related to the library content itself.
