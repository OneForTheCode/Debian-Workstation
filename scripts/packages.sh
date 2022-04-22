#!/bin/bash

### LOAD ENV CONFIG
source env.sh

### UPDATE REPOSITORY CACHE
sudo apt update -y

### UPGRADE BASE SYSTEM
sudo apt upgrade -y

### INSTALL BASE PACKAGES
sudo apt install rsync file lsb-release fonts-powerline git bspwm gzip unzip polybar rofi sxhkd picom breeze-cursor-theme sddm arandr lxappearance lxpolkit -y

### INSTALL CLI PACKAGES
sudo apt install mc htop wget nano curl iftop iotop atop speedtest-cli neofetch -y

### INSTALL TOOLS PACKAGES
sudo apt install feh nitrogen thunar thunar-archive-plugin thunar-font-manager thunar-volman sakura gparted network-manager network-manager-l2tp network-manager-openvpn network-manager-pptp network-manager-ssh -y

### INSTALL WEB PACKAGES
sudo apt install chromium -y

### INSTALL PRODUCTION PACKAGES
sudo apt install flameshot codium filezilla -y

### ENABLE SYSTEMCTL
sudo systemctl enable sddm
sudo systemctl set-default graphical.target
