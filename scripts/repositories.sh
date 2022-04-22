#!/bin/bash

### LOAD ENV CONFIG
source env.sh

### COPY EXTRA REPOSITORIES
cd
cd ${TEMPDIR}/config/system/repos/
sudo cp *.list /etc/apt/sources.list.d
cd /etc/apt/sources.list.d
sudo chown root.root *.list
cd
