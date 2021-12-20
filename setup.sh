#!/bin/sh

sudo pacman -S pulseaudio pulseaudio-alsa alsa-utils

sudo pacman -S git python python2 python-pip base-devel nmap

sudo pacman -S xorg xorg-xinit
sudo pacman -S bspwm sxhkd

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

sudo pacman -S rxvt-unicode firefox thunar feh
sudo pacman -S adobe-source-han-serif-jp-fonts papirus-icon-theme gtk2 gtk3 imagemagick
sudo pacman -S network-manager-applet

yay polybar
yay ttf-iosevka
yay pa-applet

pip3 install pywal

mkdir ~/.config/sxhkd
mkdir ~/.config/bspwm
mkdir ~/.config/polybar
mkdir "~/.config/gtk-2.0"
mkdir "~/.config/gtk-3.0"

cp sxhkd/sxhkdrc ~/.config/sxhkdrc
cp bspwm/bspwmrc ~/.config/bspwmrc
cp polybar/config ~/.config/polybar/config
cp polybar/launch.sh ~/.config/polybar/launch.sh
cp "gtk-2.0/gtkfilechooser.ini" "~/.config/gtk-2.0/gtkfilechooser.ini"
cp "gtk-3.0/settings.ini" "~/.config/gtk-3.0/settings.ini"

chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/polybar/lunach.sh
