#!/bin/sh
# Script made by Kenzino https://github.com/Kentsino

# Updating the system
echo "Syncing repos and updating packages, dont forget to check archlinux.org before updating/installing packages after syncing"
sudo pacman -Syu

# Installing programs
echo "Installing essentials"
sudo pacman -S firefox pacman-contrib alacritty neovim ufw apparmor nvidia amd-ucode cuda htop pulseaudio pavucontrol xorg-xinit flameshot xorg libx11 libxinerama zsh zsh-autosuggestions zsh-syntax-highlighting libxft dunst nitrogen wget lf feh ttf-jetbrains-mono patch

# Creating directories 
echo "Creating home directories"
mkdir ~/documents ~/git ~/aur

# Change to zsh
chsh -s /bin/zsh

# Firewall
sudo ufw enable
