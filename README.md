# Asus-Tuf-B460-Gaming-Plus-ATX--i5-10400-HackintoshOpenCore
This is my EFI folder which is built by Dortania guide


What's new v0.3!!
- ACPI build by SSDT Time Tool.
- Intel quick syns now is working fully when I add RX 580 Graphics.
+ DRM still is not working.
+ RX 580 consumes 30w when computer is idle ( Windows 10 is 12~15W)
![alt text](https://github.com/hmthang96/Asus-Tuf-B460-Gaming-Plus-ATX--i5-10400-HackintoshOpenCore/blob/main/pictures/Bigsur.png?raw=true)
![alt text](https://github.com/hmthang96/Asus-Tuf-B460-Gaming-Plus-ATX--i5-10400-HackintoshOpenCore/blob/main/pictures/2.png?raw=true)


Ver 0.2
Upgrade to BigSur!!!!

Fix USB 3.0

Enable DW1560

Fix BIOS Time -Thanks Akarsh Jain (@https://github.com/akarsh1995/)

USB3.0 : Bay gio cong USB da nhan chinh xac duoc port 2.0 va port 3.0 ( Bang cach thay doi A2AF sang A3AF cua USBInjectAll.kext/Contents/Info.plist).

Kext USBPorts.kext cua minh bao gom nhan day du 6 port USB cong sau, 1 port gan bluetooth DW1560 va 3 port USB cong truoc

Da kich hoat duoc DW1560 tren Bigsur bang cach xoa file AirPortBrcm4360_Injector.kext

Da sua duoc loi BIOS thuong xuyen vao Safemode sau moi lan restart bang cach chinh lai DisableRTCChecksum -> False

Problem : DRM, Apple TV+ , Netflix on Safari still not working
____________________________________________
Ver 0.1
Based on Catalina 10.15.5 and Opencore 0.6.3
