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



### LOAD CONFIGURATION FILE
while read configLine; do
    if [[ "${configLine}" != *"#"* ]] && [[ ! -z "${configLine}" ]]; then
        if [[ "${configLine}" == *"=("* ]]; then
            declare -a "${configLine}"
        else
            declare "${configLine}"
        fi
    fi
done < migration.conf
HOME_DIR="${HOME}"
TEMP_DIR="${HOME}/debian-temp-install-scripts/Debian-Workstion"


### LOAD SCRIPT FUNCTIONS
source functions/dialog.fn
source functions/repositories.fn
source functions/packages.fn
source functions/sysconfig.fn
source functions/fonts.fn
source functions/directories.fn
source functions/dotconfig.fn


### SHOW WELCOME MESSAGE
dialog_welcome


### RUN REPOSITORIES SCRIPT
repositories_run


### RUN PACKAGE SCRIPT
packages_run


### RUN SYSTEM CONFIG SCRIPT
sysconfig_run


### RUN FONTS SCRIPT
fonts_run


### RUN USER DIRECTORIES SCRIPT
directories_run


### RUN DOT CONFIG SCRIPT
dotconfig_run


### CREATE REBOOT FILE
touch ~/MIGRATION.reboot
