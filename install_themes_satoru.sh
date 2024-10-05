#!/bin/bash

sudo rm -rf ~/.config/hypr
sudo mv ~/myArch/.config/hypr ~/.config/
sudo mv ~/myArch/.config/alacritty ~/.config/
sudo mv ~/myArch/.config/mako ~/.config/
sudo mv ~/myArch/.config/rofi ~/.config/

sudo mv ~/myArch/themes/satoru/Pictures ~/
sudo mv ~/myArch/themes/satoru/fastfetch ~/.config/
sudo mv ~/myArch/themes/satoru/waybar ~/.config/
sudo mv ~/myArch/themes/satoru/hyprland.conf ~/.config/hypr/

sudo rm -rf ~/.bashrc
sudo mv ~/myArch/themes/satoru/.bashrc ~/
sudo cp ~/.bashrc /root

mkdir .icons
mkdir .themes
sudo mv ~/myArch/themes/satoru/Catppuccin-Dark ~/.themes
sudo mv ~/myArch/themes/satoru/Catppuccin-Dark-hdpi ~/.themes
sudo mv ~/myArch/themes/satoru/Catppuccin-Dark-xhdpi ~/.themes

sudo mv ~/myArch/themes/satoru/oreo_spark_lite_cursors ~/.icons
sudo mv ~/myArch/themes/satoru/ePapirus-Dark ~/.icons
sudo mv ~/myArch/themes/satoru/ePapirus ~/.icons
sudo mv ~/myArch/themes/satoru/Papirus-Dark ~/.icons
sudo mv ~/myArch/themes/satoru/Papirus ~/.icons

sudo cp -i /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf
sudo mv ~/myArch/themes/satoru/simple-sddm /usr/share/sddm/themes/
