#!/bin/bash

### LOAD ENV CONFIG
source env.sh

### CHANGE DIRECTORY
cd
cd ${TEMPDIR}/configs/system

### RSYNC DEAMON CONFIG
sudo cp rsyncd.conf /etc/rsyncd.conf
sudo chown root.root /etc/rsyncd.conf
sudo systemctl enable rsyncd

### SDDM CONFIG
sudo cp sddm.conf /etc/sddm.conf
sudo chown root.root /etc/sddm.conf
sudo systemctl enable sddm

### SDDM FACE ICONS
sudo cp sddm/faces/* /usr/share/sddm/faces
sudo chown root.root /usr/share/sddm/faces/*.icon

### CHANGE DIRECTORY
cd
cd ${TEMPDIR}/themes/sddm

### SDDM THEMES
sudo cp * /usr/share/sddm/themes
sudo chown -R root.root /usr/share/sddm/themes/*