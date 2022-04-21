#!/bin/bash

### UPDATE APT PACKAGES REPOSITORIES
apt update -y

### INSTALL GIT SO WE CAN CLONE THE PROJECT
apt install git -y

### SETUP TEMP DIRECTORY
cd
mkdir debian-temp-install-scripts
cd debian-temp-install-scripts

### CLONE THE PROJECT
git clone https://github.com/OneForTheCode/Debian-Workstation.git

### LAUCH MIGRATION SCRIPT
cd Debian-Workstation
chmod +x scripts/migration.sh
./scripts/migration.sh

### REMOVE TEMP DIRECTORY
cd
rm -rf debian-temp-install-scripts

### REBOOT IF MIGRATION FINISHED
if [ -f "MIGRATION.reboot" ]; then
    rm -f MIGRATION.reboot
    sudo reboot
else
    echo "Migration failed for some reason and system can't be automatic rebooted!!!"
fi
