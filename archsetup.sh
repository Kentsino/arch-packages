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
mkdir documents wallpapers git aur

# Installing suckless
echo "do you want suckless? yes or no?"

read suck

if [ $suck = yes ]; then
echo "Installing suckless"
wget https://dl.suckless.org/dwm/dwm-6.4.tar.gz && tar -xzvf dwm-6.4.tar.gz
wget https://dl.suckless.org/tools/dmenu-5.2.tar.gz && tar -xzvf dmenu-5.2.tar.gz
rm dwm-6.4.tar.gz dmenu-5.2.tar.gz
echo "Compiling suckless"
cd ~/dwm-6.4/ && make && sudo make install 
cd ~/dmenu-5.2/ && make && sudo make install
else 
echo "failed"
fi

# Cloning and linking dots
echo "Configuring dotfiles"
cd ~/git/ && git clone https://github.com/Kentsino/dotfiles.git && cd dotfiles/
ln -s ~/git/dotfiles/nvim ~/.config/
ln -s ~/git/dotfiles/.zshrc ~/
ln -s ~/git/dotfiles/starship.toml ~/.config/
