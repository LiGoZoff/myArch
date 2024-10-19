#!/bin/bash


tar -xJf ~/myArch/themes/satoru/Lavanda-Dark.tar.xz
tar -xvzf ~/myArch/themes/satoru/cursor.tar.gz 
tar -xJf ~/myArch/themes/satoru/papirus-icon-theme-carmine-folders.tar.xz 
tar -xvzf ~/myArch/themes/satoru/simple-sddm.tar.gz 

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
sudo mv ~/myArch/.bashrc /root

mkdir .icons
mkdir .themes
sudo mv ~/Lavanda-Dark ~/.themes
sudo mv ~/Lavanda-Dark-hdpi ~/.themes
sudo mv ~/Lavanda-Dark-xhdpi ~/.themes

sudo mv ~/oreo_spark_lite_cursors ~/.icons
sudo mv ~/ePapirus-Dark ~/.icons
sudo mv ~/ePapirus ~/.icons
sudo mv ~/Papirus-Dark ~/.icons
sudo mv ~/Papirus ~/.icons

sudo mv ~simple-sddm /usr/share/sddm/themes/
