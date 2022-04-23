#!/bin/bash

###############################################################################
###                                                                         ###
### One For The Code - Debian Workstion Migration Tool                      ###
### ==================================================                      ###
###                                                                         ###
### Install script to setup debian minimal install to a debian workstation  ###
### with bspwm (window manager) and lots of base packages and production    ###
### tools.                                                                  ###
###                                                                         ###
###                                                                         ###
### Version  : 1.0.0                                                        ###
### Author   : Dennis de houx <dennis@aio.be>                               ###
### Copyright: 2022 (c) One For The Code                                    ###
###            2022 (c) All In One                                          ###
### Links    : https://github.com/OneForTheCode/Debian-Workstation          ###
###                                                                         ###
###############################################################################



### SHOW THE HEADER
echo " "
echo "###############################################################################"
echo "###                                                                         ###"
echo "### One For The Code - Debian Workstion Migration Tool                      ###"
echo "###                                                                         ###"
echo "###############################################################################"
echo " "


### CHECK IF SUDO IS INSTALLED
read sudoCheck <<< "$(which sudo 2> /dev/null)"
if [ -z "${sudoCheck}" ]; then
    echo " !!! Migration failed !!!"
    echo " "
    echo " Please install and setup 'sudo' as this is prerequired to finish the migration"
    echo " "
    exit 1
fi


### CHECK IF PRE-REQUIRED PACKAGES ARE INSTALLED
declare -a REQUIRED_PKGS=(dialog git)
PACKAGES=""
for PKG in "${REQUIRED_PKGS[@]}"; do
    read Check <<< "$(which ${PKG} 2> /dev/null)"
    if [[ -z "${Check}" ]]; then
        PACKAGES="${PACKAGES} ${PKG}"
    fi
done
if [[ ! -z "${PACKAGES}" ]]; then
    echo -n " * Installing pre required packages, please wait..."
    sudo apt -y -qq install ${PACKAGES} > /dev/null 2>&1
    echo " Done."
fi


### SETUP DIALOG
echo -n " * Setting up dialog, please wait..."
if [[ ! -f "~/dialog.rc" ]]; then
    wget -q "https://raw.githubusercontent.com/OneForTheCode/Debian-Workstation/main/scripts/dialog.rc" -O ~/.dialog.rc > /dev/null 2>&1
    touch ~/DIALOGRC.clean > /dev/null 2>&1
fi
echo " Done."


### SETUP TEMP DIRECTORY
echo -n " * Creating temporary directory for install scripts, please wait..."
cd
mkdir debian-temp-install-scripts
echo " Done."
echo -n " * Changing to temporary directory, please wait..."
cd debian-temp-install-scripts
echo " Done."


### CLONE THE PROJECT
echo -n " * Downloading install scripts and files, please wait..."
git clone https://github.com/OneForTheCode/Debian-Workstation.git > /dev/null 2>&1
echo " Done."


### LAUCH MIGRATION SCRIPT
echo -n " * Starting the migration scripts, please wait..."
cd Debian-Workstation/scripts
chmod +x migration.sh
./migration.sh
echo " Done."


### REMOVE TEMP DIRECTORY
echo -n " * Removing temporary install scripts and files, please wait..."
cd
rm -rf debian-temp-install-scripts
if [[ -f "~/DIALOGRC.clean" ]]; then
    rm -f ~/.dialog.rc > /dev/null 2>&1
    rm -f ~/DIALOGRC.clean > /dev/null 2>&1
echo " Done."


### REBOOT IF MIGRATION FINISHED
if [[ -f "MIGRATION.reboot" ]]; then
    rm -f MIGRATION.reboot > /dev/null 2>&1
    rm -f $0 > /dev/null 2>&1
    sudo reboot
else
    echo " !!! Migration failed !!!"
    echo " "
    echo " System is not able to reboot, please reboot manually or restart the migration script."
    echo " "
fi
