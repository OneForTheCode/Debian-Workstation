#!/bin/bash

### LOAD ENV CONFIG
source env.sh

### RUN REPOSITORIES SCRIPT
./repositories.sh

### RUN PACKAGE SCRIPT
./packages.sh

### RUN SYSTEM CONFIG SCRIPT
./sysconfig.sh

### RUN FONTS SCRIPT
./fonts.sh

### RUN USER DIRECTORIES SCRIPT
./directories.sh

### RUN DOT CONFIG SCRIPT
./dotconfig.sh

### CREATE REBOOT FILE
cd
touch MIGRATION.reboot
