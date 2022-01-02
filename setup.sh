#!/bin/sh

sudo pacman -S pulseaudio pulseaudio-alsa alsa-utils

sudo pacman -S git python python2 python-pip base-devel nmap

sudo pacman -S xorg xorg-xinit pulseaudio pulseaudio-alsa
sudo pacman -S bspwm sxhkd

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

sudo pacman -S rxvt-unicode firefox thunar feh ibus ibus-anthy
sudo pacman -S adobe-source-han-serif-jp-fonts papirus-icon-theme gtk2 gtk3 imagemagick
sudo pacman -S network-manager-applet
sudo pacman -S rofi picom

yay polybar
yay ttf-iosevka
yay pa-applet

pip3 install pywal

mkdir ~/.config/rofi
mkdir ~/.config/sxhkd
mkdir ~/.config/bspwm
mkdir ~/.config/polybar
mkdir ~/.config/gtk-2.0
mkdir ~/.config/gtk-3.0
mkdir ~/.config/wal
mkdir ~/.config/wal/templates

cp config.rasi ~/.config/rofi/config.rasi
cp sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
cp bspwm/bspwmrc ~/.config/bspwm/bspwmrc
cp polybar/config ~/.config/polybar/config
cp polybar/launch.sh ~/.config/polybar/launch.sh
cp gtk-2.0/gtkfilechooser.ini ~/.config/gtk-2.0/gtkfilechooser.ini
cp gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini
cp wal/colors-rofi-dark.rasi ~/.config/wal/templates
