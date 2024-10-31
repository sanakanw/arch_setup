#!/bin/sh

sudo pacman -S pulseaudio pulseaudio-alsa alsa-utils --noconfirm

sudo pacman -S git python python-pip base-devel nmap --noconfirm

sudo pacman -S xorg xorg-xinit pulseaudio pulseaudio-alsa --noconfirm
sudo pacman -S bspwm sxhkd --noconfirm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

sudo pacman -S kitty firefox feh ibus ibus-anthy maim --noconfirm
sudo pacman -S adobe-source-han-serif-jp-fonts papirus-icon-theme gtk3 imagemagick nerd-fonts --noconfirm
sudo pacman -S network-manager-applet --noconfirm
sudo pacman -S thunar tumbler gvfs thunar-volman

yay polybar
yay ttf-iosevka
yay pa-applet

sudo pacman -S python-pywal --noconfirm

mkdir -p ~/.config
mkdir -p ~/.config/rofi
mkdir -p ~/.config/sxhkd
mkdir -p ~/.config/bspwm
mkdir -p ~/.config/polybar
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/wal
mkdir -p ~/.config/wal/templates

cp -r rofi ~/.config
cp -r sxhkd ~/.config
cp -r bspwm ~/.config
cp -r polybar ~/.config
cp -r "gtk-3.0" "~/.config"
cp -r wal ~/.config
cp -r nvim ~/.config
cp -r kitty ~/.config

cp .bashrc ~
cp .vimrc ~
cp .xinitrc ~

mkdir -p ~/w
cp bg.jpg ~/w/bg.jpg
