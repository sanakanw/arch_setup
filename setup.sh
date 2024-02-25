#!/bin/sh

sudo pacman -S pulseaudio pulseaudio-alsa alsa-utils --noconfirm

sudo pacman -S git python python-pip base-devel nmap --noconfirm

sudo pacman -S xorg xorg-xinit pulseaudio pulseaudio-alsa --noconfirm
sudo pacman -S bspwm sxhkd --noconfirm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

sudo pacman -S rxvt-unicode firefox thunar feh ibus ibus-anthy --noconfirm
sudo pacman -S adobe-source-han-serif-jp-fonts papirus-icon-theme gtk2 gtk3 imagemagick --noconfirm
sudo pacman -S network-manager-applet --noconfirm
sudo pacman -S rofi picom --noconfirm

yay polybar
yay ttf-iosevka
yay pa-applet

sudo pacman -S python-pywal --noconfirm

mkdir ~/.config
mkdir ~/.config/rofi
mkdir ~/.config/sxhkd
mkdir ~/.config/bspwm
mkdir ~/.config/polybar
mkdir ~/.config/gtk-2.0
mkdir ~/.config/gtk-3.0
mkdir ~/.config/wal
mkdir ~/.config/wal/templates

cp rofi/config.rasi ~/.config/rofi/config.rasi
cp sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
cp bspwm/bspwmrc ~/.config/bspwm/bspwmrc
cp polybar/config ~/.config/polybar/config
cp polybar/launch.sh ~/.config/polybar/launch.sh
cp gtk-2.0/gtkfilechooser.ini ~/.config/gtk-2.0/gtkfilechooser.ini
cp gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini
cp wal/colors-rofi-dark.rasi ~/.config/wal/templates

cp .bashrc ~
cp .Xresources ~
cp .vimrc ~
cp .xinitrc ~

mkdir ~/w
cp bg.jpg ~/w/bg.jpg
