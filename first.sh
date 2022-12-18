#!/bin/bash
xbps-install -Su
xbps-install harfbuzz-devel base-devel libX11-devel libXft-devel libXinerama-devel nerd-fonts font-awesome xorg i3-gaps bumblebee-status firefox-esr picom feh mpv ranger neofetch vim pfetch pavucontrol pulseaudio 
cd ..
mkdir /etc/X11/xorg.conf.d
cp voidscript/20-intel.conf /etc/X11/xorg.conf.d/20-intel.conf
git clone https://github.com/lukesmithxyz/st
cd st
make clean install
cd ..
rm -rf st
git clone https://github.com/FreeSpirit544/dmenu
cd dmenu
make clean install
cd ..
rm -rf dmenu
echo now run second.sh without root privileges
