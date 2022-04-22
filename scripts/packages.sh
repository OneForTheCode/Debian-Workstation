#!/bin/bash

### LOAD ENV CONFIG
source env.sh

### UPDATE REPOSITORY CACHE
sudo apt update -y

### UPGRADE BASE SYSTEM
sudo apt upgrade -y

### INSTALL BASE PACKAGES
sudo apt install plymouth rsync screen sshfs nfs-common file lsb-release fonts-powerline git bspwm gzip unzip polybar rofi sxhkd picom breeze-cursor-theme sddm arandr lxappearance lxpolkit -y

### INSTALL CLI PACKAGES
sudo apt install iputils-ping traceroute mtr mc htop wget nano curl tcpdump nmon nfswatch nfstrace iftop iotop atop usbtop speedtest-cli neofetch -y

### INSTALL TOOLS PACKAGES
sudo apt install feh nitrogen thunar thunar-archive-plugin thunar-font-manager thunar-volman sakura gparted network-manager network-manager-l2tp network-manager-openvpn network-manager-pptp network-manager-ssh -y

### INSTALL WEB PACKAGES
sudo apt install chromium -y

### INSTALL PRODUCTION PACKAGES
sudo apt install eog totem p7zip-full flameshot codium filezilla gimp inkscape qalculate -y

### SET GRAPHICAL INTERFACE FIRST
sudo systemctl enable plymouth
sudo systemctl set-default graphical.target
