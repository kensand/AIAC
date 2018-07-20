#!/usr/bin/env sh
sudo chown -R "$USER":users $HOME/config/

sudo pacman -Syu i3-gaps git open-vm-tools mesa xf86-input-vmmouse xf86-video-vmware compton jsoncpp feh ttf-ubuntu-font-family
sudo pacman -Ru dmenu

git clone https://aur.archlinux.org/aurman.git
cd aurman
gpg --recv-key 465022E743D71E39
makepkg -si
cd ..

sudo systemctl enable vmware-vmblock-fuse
sudo systemctl enable vmtoolsd
aurman -Syu polybar dmenu2

git clone https://github.com/kensand/dotfiles
"$HOME"/config/dotfiles/install.sh

