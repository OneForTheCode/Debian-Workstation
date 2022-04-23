#!/bin/bash

### LOAD ENV CONFIG
source env.sh

### UPDATE REPOSITORY CACHE
sudo apt update -y

### UPGRADE BASE SYSTEM
sudo apt upgrade -y

### INSTALL BASE PACKAGES
sudo apt install plymouth rsync screen sshfs nfs-common smartmontools lm-sensors file lsb-release fonts-powerline procps git bspwm gzip unzip polybar rofi sxhkd picom breeze-cursor-theme sddm arandr lxappearance lxpolkit -y

### INSTALL CLI PACKAGES
sudo apt install iputils-ping traceroute mtr mc htop wget nano curl tcpdump nmon nfswatch nfstrace sysstat net-tools nmap iftop iotop atop usbtop bashtop glances speedtest-cli neofetch -y

### INSTALL TOOLS PACKAGES
sudo apt install feh nitrogen thunar thunar-archive-plugin thunar-font-manager thunar-volman sakura gparted hardinfo ksysguard network-manager network-manager-l2tp network-manager-openvpn network-manager-pptp network-manager-ssh -y

### INSTALL WEB PACKAGES
sudo apt install chromium -y

### INSTALL ANTIVIRUS PACKAGES
sudo apt install clamav clamav-base clamav-docs clamav-freshclam clamfs clamtk clamdscan clamav-unofficieal-sigs

### INSTALL PRODUCTION PACKAGES
sudo apt install eog totem p7zip-full flameshot codium filezilla gimp inkscape qalculate okular okular-backend-odp okular-backend-odt remmina -y

### SET GRAPHICAL INTERFACE FIRST
sudo systemctl enable plymouth
sudo systemctl set-default graphical.target
