#!/bin/bash

echo "
************************************************************************************
hmthang96@gmail.com              
My file was based on xiaoMGitHub/LEGION_Y7000Series_Hackintosh
Ver0.1: Fix TimeSync - Localtime                    
************************************************************************************
"

DAEMON_PATH=/Library/LaunchDaemons/
BIN_PATH=/usr/local/bin/
TMP_PATH=/tmp/
TIME_FIX_FILE=localtime-toggle
TIME_DAEMON_FILE=org.osx86.localtime-toggle.plist

echo "This script required to run as root"

sudo spctl --master-disable
sudo rm -rf /var/vm/sleepimage
sudo mkdir /var/vm/sleepimage

echo "Downloading required file"
sudo curl -o $TMP_PATH$TIME_FIX_FILE "https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master/TimeSynchronization/$TIME_FIX_FILE"
sudo curl -o $TMP_PATH$TIME_DAEMON_FILE "https://gitee.com/xiaoMGit/Y7000Series_Hackintosh_Fix/raw/master/TimeSynchronization/$TIME_DAEMON_FILE"

echo "Copy file to destination place..."
sudo cp $TMP_PATH$TIME_FIX_FILE $BIN_PATH
sudo cp $TMP_PATH$TIME_DAEMON_FILE $DAEMON_PATH
sudo rm $TMP_PATH$TIME_FIX_FILE
sudo rm $TMP_PATH$TIME_DAEMON_FILE

echo "Chmod localtime-toggle..."
sudo chmod +x $BIN_PATH$TIME_FIX_FILE
sudo chown root:wheel $DAEMON_PATH$TIME_DAEMON_FILE
sudo chmod 644 $DAEMON_PATH$TIME_DAEMON_FILE

echo "Load Localtime-toggle..."
if sudo launchctl list | grep --quiet $TIME_DAEMON_FILE; then
    echo "Stopping existing localtime-toggle daemon."
    sudo launchctl unload $DAEMON_PATH$TIME_DAEMON_FILE
fi
sudo launchctl load -w $DAEMON_PATH$TIME_DAEMON_FILE

echo "Clear Cache..."
sudo kextcache -i /

echo "Done!"

exit 0
