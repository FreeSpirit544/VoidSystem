#!/bin/bash
xbps-install -Su
xbps-install harfbuzz-devel base-devel libX11-devel libXft-devel libXinerama-devel nerd-fonts font-awesome xorg i3-gaps bumblebee-status firefox-esr picom feh mpv ranger neofetch vim pfetch pavucontrol pulseaudio 
cd ..
mkdir .config/i3
cp voidscript/config .config/i3/config
cd voidscript
mkdir /etc/X11/xorg.conf.d
cp 20-intel.conf /etc/X11/xorg.conf.d/20-intel.conf
cd st
make clean install
cd ..
cd dmenu 
make clean install
cd ..
cd ..
cp voidscript/xinitrc .xinitrc
cp voidscript/vimrc .vimrc
mkdir Wallpapers
cp voidscript/Wallpaper.jpg Wallpapers/Wallpaper.jpg
