#!/bin/bash

nmcli device wifi connect Xiaomi_0298 password 59563129

git clone https://github.com/LiGoZoff/myArch.git
sudo chmod +x ~/myArch/.config/hypr/vscode.sh
sudo chmod +x ~/myArch/themes/kaneki/rofi/launchers/launcher.sh
sudo chmod +x ~/myArch/themes/kaneki/rofi/powermenu/powermenu.sh
sudo chmod +x ~/myArch/scripts/install.sh
sudo chmod +x ~/myArch/scripts/zapret.sh
./myArch/scripts/install.sh

tar -xJf ~/myArch/themes/kaneki/Kripton-v40.tar.xz
tar -xvzf ~/myArch/themes/kaneki/cursor.tar.gz 
tar -xJf ~/myArch/themes/kaneki/papirus-icon-theme-white-folders.tar.xz 
tar -xvzf ~/myArch/themes/kaneki/simple-sddm.tar.gz 
sudo rm -rf ~/Papirus-Light

sudo rm -rf ~/.config/hypr
sudo mv ~/myArch/.config/hypr ~/.config/
sudo mv ~/myArch/.config/alacritty ~/.config/
sudo mv ~/myArch/themes/kaneki/mako ~/.config/
sudo mv ~/myArch/themes/kaneki/rofi ~/.config/

sudo mv ~/myArch/themes/kaneki/Pictures ~/
sudo mv ~/myArch/themes/kaneki/fastfetch ~/.config/
sudo mv ~/myArch/themes/kaneki/waybar ~/.config/
sudo mv ~/myArch/themes/kaneki/hyprland.conf ~/.config/hypr/

sudo rm -rf ~/.bashrc
sudo mv ~/myArch/themes/kaneki/.bashrc ~/
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

cd ~
./myArch/scripts/zapret.sh

sudo rm -rf ~/myArch
sudo rm -rf ~/install_kaneki.sh

systemctl poweroff
