- I5 10400
- GPU RX 580 8gb
- Ram 32Gb
- Main: Asus Tuf Gaming B460
- Wifi: BCM94360cs2
- SSD: Micron SATA 1TB + 512Gb
- Monitor: Samsung 28'

v.0.4.3iMacPro1,1: Support Monterey Beta and Update Opencore to 0.7.1 and some kexts
- work well DRM (Apple Music with Dolby and Lossess audio, Apple TV+, Netflix on Safari, Amazone Video)
- CPU work from 1Ghz to 4.3 Ghz

v.0.4.3 Mac20.1: Support Monterey Beta and Update Opencore to 0.7.1 and some kexts
- Fix black screen when hackintosh wakes from sleep.
- Fix "no sign" when you use multiple monitors.
- Fix no audio from HDMI source
Support Gaming TUF B460M, you don't need patch APCI anymore. Just download and use it...



v.0.4.2 : For Asus Tuf Gaming B460M, you patch ACPI from your main before using my EFI
- Now I use new native device wifi: BCM94360 (Remove some kext of DW1560)
- CPUFriendProve allow CPU to run from 800Mhz
- Fix bootloop when upgrade or install Bigsur 11.3
- XHCIPOrtLimit: Disable
- 15 port USB working( I disabled Mid Back 2 USB)
- Update Opencore to 0.6.8 and some kexts.

v0.4.1
- Now my EFI can use both Catalina and Bigsur. 
- On Catalina, you can use DRM function if you have a AMD VGA. BigSur isn't working with DRM function


What's new v0.4!
- Fix USB 3.0 ( see below)
- Fix Bios go to Safe mode after shutdown
- CPU slow down to 800Mhz when Ide
- Fix slow boot time with DW1560 card
-Fix Safari crashing cause UHD630 grphics
What's Working!
- iMessage/Factime
- Sleep/Wake
- Front, Side, Sub, Cen Audio port + Mic port
- Ethernet, Wifi, Bluetooth
- Airplay
- HDMI (audio and grphics)
- DP
- Appstore

Not working
- Real Audio port still not working
-DRM AppleTV+,Netflix on Safari

To use my EFI, 
- Rename config_hmthang96.plist to config.plist
- Change Rom to your MAC Ethernet ( If you don't, you can't active your account imess/facetime)
- Use GenSMBIOS to generate your SMBIOS data ( If you don't, you can't boot your Hackintosh)
