#!/bin/bash
# Script made by Kenzino https://github.com/Kentsino

# Updating the system
echo "Syncing repos and updating packages, dont forget to check archlinux.org before updating/installing packages after syncing"
sudo pacman -Syu

# Installing programs
echo "Installing essentials"
sudo pacman -S firefox neovim ufw apparmor nvidia amd-ucode cuda htop zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting flameshot xorg libx11 libxinerama libxft dunst nitrogen wget lf feh ttf-jetbrains-mono patch

# Creating directories 
echo "Creating home directories"
mkdir git wallpapers aur

# Installing suckless programs
echo "Installing suckless"
wget https://dl.suckless.org/dwm/dwm-6.4.tar.gz && tar -xzvf dwm-6.4.tar.gz
wget https://dl.suckless.org/tools/dmenu-5.2.tar.gz && tar -xzvf dmenu-5.2.tar.gz
wget https://dl.suckless.org/st/st-0.9.tar.gz && tar -xzvf st-0.9.tar.gz
rm dwm-6.4.tar.gz dmenu-5.2.tar.gz st-0.9.tar.gz

# Compiling suckless programs
echo "Compiling suckless"
cd ~/dwm-6.4/ && make && sudo make install 
cd ~/dmenu-5.2/ && make && sudo make install 
cd ~/st-0.9/ && make && sudo make install

# Cloning and linking dots
echo "Configuring dotfiles"
cd ~/git/ && git clone https://github.com/Kentsino/dotfiles.git && cd dotfiles/
ln -s ~/git/dotfiles/nvim ~/.config/
