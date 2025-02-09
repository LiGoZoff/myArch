#!/bin/bash

nmcli device wifi connect Xiaomi_0298 password 59563129

git clone https://github.com/LiGoZoff/myArch.git
sudo chmod +x ~/myArch/.config/hypr/vscode.sh
sudo chmod +x ~/myArch/.config/rofi/launcher.sh
sudo chmod +x ~/myArch/scripts/install.sh
sudo chmod +x ~/myArch/scripts/zapret.sh
sudo chmod +x ~/myArch/.config/hypr/wallpaper.sh
./myArch/scripts/install.sh

tar -xJf ~/myArch/themes/Kripton-v40.tar.xz
tar -xvzf ~/myArch/themes/cursor.tar.gz 
tar -xJf ~/myArch/themes/papirus-icon-theme-white-folders.tar.xz 
tar -xvzf ~/myArch/themes/simple-sddm.tar.gz 
sudo rm -rf ~/Papirus-Light

sudo rm -rf ~/.config/hypr
sudo mv ~/myArch/.config/hypr ~/.config/
sudo mv ~/myArch/.config/kitty ~/.config/
sudo mv ~/myArch/.config/fastfetch ~/.config/
sudo mv ~/myArch/.config/mako ~/.config/
sudo mv ~/myArch/.config/rofi ~/.config/
sudo mv ~/myArch/.config/waybar ~/.config/
sudo mv ~/myArch/.config/clipse ~/.config/
mkdir Pictures; mkdir Pictures/Wallpapers; mkdir Pictures/Screenshots

sudo rm -rf ~/.bashrc
sudo mv ~/myArch/themes/.bashrc ~/
sudo mv ~/myArch/.bashrc /root

mkdir .icons
mkdir .themes
sudo mv ~/Kripton-v40 ~/.themes

sudo mv ~/oreo_spark_lite_cursors ~/.icons
sudo mv ~/ePapirus-Dark ~/.icons
sudo mv ~/ePapirus ~/.icons
sudo mv ~/Papirus-Dark ~/.icons
sudo mv ~/Papirus ~/.icons

sudo mv ~/simple-sddm /usr/share/sddm/themes/

./myArch/scripts/zapret.sh

sudo rm -rf ~/myArch
sudo rm -rf ~/install_arch.sh

systemctl poweroff
