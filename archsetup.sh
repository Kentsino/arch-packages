#!/bin/bash

#Updating the system
echo "Syncing repos and updating packages"
sudo pacman -Syu

#Installing programs
echo "Installing essentials"
sudo pacman -S firefox neovim alacritty ufw apparmor nvidia amd-ucode cuda htop zsh flameshot xorg libx11 libxinerama libxft
