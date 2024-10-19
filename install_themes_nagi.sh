#!/bin/bash


tar -xvzf ~/myArch/themes/nagi/Catppuccin-Dark-B-LB.tar.gz
tar -xvzf ~/myArch/themes/nagi/cursor.tar.gz 
tar -xJf ~/myArch/themes/nagi/papirus-icon-theme-carmine-folders.tar.xz 
tar -xvzf ~/myArch/themes/nagi/simple-sddm.tar.gz 

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
sudo mv ~/Catppuccin-Dark ~/.themes
sudo mv ~/Catppuccin-Dark-hdpi ~/.themes
sudo mv ~/Catppuccin-Dark-xhdpi ~/.themes

sudo mv ~/oreo_spark_lite_cursors ~/.icons
sudo mv ~/ePapirus-Dark ~/.icons
sudo mv ~/ePapirus ~/.icons
sudo mv ~/Papirus-Dark ~/.icons
sudo mv ~/Papirus ~/.icons

sudo mv ~/simple-sddm /usr/share/sddm/themes/

sudo rm -rf ~/myArch
sudo rm -rf ~/just.sh
sudo rm -rf ~/install_themes_satoru.sh
sudo rm -rf ~/install_themes_nagi.sh
