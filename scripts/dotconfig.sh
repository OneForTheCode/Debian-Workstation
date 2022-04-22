#!/bin/bash

### LOAD ENV CONFIG
source env.sh

### CHANGE DIRECTORY
cd

### COPY ALL USER SETTINGS
cp -r ${TEMPDIR}/configs/user/* .