#!/bin/bash

#Updating the system
echo "Syncing repos and updating packages, dont forget to check archlinux.org before updating/installing packages after syncing"
sudo pacman -Syu

#Installing programs
echo "Installing essentials"
sudo pacman -S firefox neovim ufw apparmor nvidia amd-ucode cuda htop zsh flameshot xorg libx11 libxinerama libxft dunst nitrogen wget lf

#Creating directories 
echo "Creating home directories"
mkdir git wallpapers suckless aur

#Installing suckless programs
echo "Installing suckless"
cd suckless/ ; wget https://dl.suckless.org/dwm/dwm-6.4.tar.gz && tar -xzvf dwm-6.4.tar.gz
wget https://dl.suckless.org/tools/dmenu-5.2.tar.gz && tar -xzvf dmenu-5.2.tar.gz
wget https://dl.suckless.org/st/st-0.9.tar.gz && tar -xzvf st-0.9.tar.gz
rm dwm-6.4.tar.gz dmenu-5.2.tar.gz st-0.9.tar.gz

#Compiling suckless programs
echo "Compiling suckless"
cd ~/suckless/dwm-6.4/ ; make && sudo make install 
cd ~/suckless/dmenu-5.2/ ; make && sudo make install 
cd ~/suckless/st-0.9/ ; make && sudo make install
