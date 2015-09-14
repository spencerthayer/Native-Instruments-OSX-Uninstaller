# Native Instrumetns OSX Uninstaller

Sometimes it is necessary to uninstall and reinstall your Native Instruments software, drives and files as a solution for technical issues. The list below includes all files and folders created on your system after installing any Native Instrumetns products on an OS X operating system.

In order for the command file to uninstall your NI application it will need root acess to remove the following files and folder from your system:

Macintosh HD > Applications > Native Instruments > *Product Name* (folder)
Macintosh HD > Library > Preferences > com.native-instruments.*Product Name*.plist
Macintosh HD > Library > Audio > Plug-ins > Components > *Product Name*.component
Macintosh HD > Library > Audio > Plug-ins > VST > *Product Name*.vst
Macintosh HD > Library > Application Support > Digidesign > Plug-ins > *Product Name*.dpm
Macintosh HD > Library > Application Support > Avid > Audio > Plug-ins > *Product Name*.aaxplugin
Macintosh HD > Library > Application Support > Native Instruments > *Product Name* (folder)
Macintosh HD > Users > *Your User Name* > Library > Preferences > com.native-instruments.*Product Name*.plist
Macintosh HD > Users > *Your User Name* > Library > Application Support > Native Instruments > *Product Name* (folder)
Macintosh HD > System > Library > Extensions > NIUSB *Product Name* kext files

If you are uninstalling one of Native Instruments' sample-based programs, i.e. KONTAKT, BATTERY, AKOUSTIK PIANO or ELEKTRIK PIANO, there is also a sample library that can be deleted. It is located in the directory you chose during installation. Please note that it is NOT necessary to uninstall the library in most cases to fix common issues. You can safely leave this folder in place in most cases unless the problem you are having is related to the library content itself.
