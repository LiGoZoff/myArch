#!/bin/bash

sudo rm -rf ~/.config/hypr
sudo mv ~/myArch/.config/hypr ~/.config/
sudo mv ~/myArch/.config/alacritty ~/.config/
sudo mv ~/myArch/.config/mako ~/.config/
sudo mv ~/myArch/.config/rofi ~/.config/

sudo mv ~/myArch/themes/nagi/Pictures ~/
sudo mv ~/myArch/themes/nagi/fastfetch ~/.config/
sudo mv ~/myArch/themes/nagi/waybar ~/.config/
sudo mv ~/myArch/themes/nagi/hyprland.conf ~/.config/hypr/

sudo rm -rf ~/.bashrc
sudo mv ~/myArch/themes/nagi/.bashrc ~/
sudo mv ~/myArch/.bashrc /root

mkdir .icons
mkdir .themes
sudo mv ~/myArch/themes/nagi/Catppuccin-Dark ~/.themes
sudo mv ~/myArch/themes/nagi/Catppuccin-Dark-hdpi ~/.themes
sudo mv ~/myArch/themes/nagi/Catppuccin-Dark-xhdpi ~/.themes

sudo mv ~/myArch/themes/nagi/oreo_spark_lite_cursors ~/.icons
sudo mv ~/myArch/themes/nagi/ePapirus-Dark ~/.icons
sudo mv ~/myArch/themes/nagi/ePapirus ~/.icons
sudo mv ~/myArch/themes/nagi/Papirus-Dark ~/.icons
sudo mv ~/myArch/themes/nagi/Papirus ~/.icons

sudo cp -i /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf
sudo mv ~/myArch/themes/nagi/simple-sddm /usr/share/sddm/themes/
