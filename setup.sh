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

mkdir ~/.config
mkdir ~/.config/rofi
mkdir ~/.config/sxhkd
mkdir ~/.config/bspwm
mkdir ~/.config/polybar
mkdir ~/.config/gtk-3.0
mkdir ~/.config/wal
mkdir ~/.config/wal/templates

cp -r rofi ~/.config/rofi
cp -r sxhkd ~/.config/sxhkd
cp -r bspwm ~/.config/bspwm
cp -r polybar ~/.config/polybar
cp -r "gtk-3.0" "~/.config/gtk-3.0"
cp -r wal ~/.config/wal
cp -r nvim ~/.config/nvim
cp -r kitty ~/.config/kitty

cp .bashrc ~
cp .vimrc ~
cp .xinitrc ~

mkdir ~/w
cp bg.jpg ~/w/bg.jpg
