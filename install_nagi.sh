#!/bin/bash

nmcli device wifi connect Xiaomi_0298 password 59563129

git clone https://github.com/LiGoZoff/myArch.git
sudo chmod +x ~/myArch/.config/hypr/vscode.sh
sudo chmod +x ~/myArch/themes/nagi/rofi/launchers/launcher.sh
sudo chmod +x ~/myArch/themes/nagi/rofi/powermenu/powermenu.sh
sudo chmod +x ~/myArch/scripts/install.sh
sudo chmod +x ~/myArch/scripts/zapret.sh
sudo bash ~/myArch/scripts/install.sh

tar -xJf ~/myArch/themes/nagi/Kripton-v40.tar.xz
tar -xvzf ~/myArch/themes/nagi/cursor.tar.gz 
tar -xJf ~/myArch/themes/nagi/papirus-icon-theme-white-folders.tar.xz 
tar -xvzf ~/myArch/themes/nagi/simple-sddm.tar.gz 
sudo rm -rf ~/Catppucin-Light

sudo rm -rf ~/.config/hypr
sudo mv ~/myArch/.config/hypr ~/.config/
sudo mv ~/myArch/.config/alacritty ~/.config/
sudo mv ~/myArch/themes/nagi/mako ~/.config/
sudo mv ~/myArch/themes/nagi/rofi ~/.config/

sudo mv ~/myArch/themes/nagi/Pictures ~/
sudo mv ~/myArch/themes/nagi/fastfetch ~/.config/
sudo mv ~/myArch/themes/nagi/waybar ~/.config/
sudo mv ~/myArch/themes/nagi/hyprland.conf ~/.config/hypr/

sudo rm -rf ~/.bashrc
sudo mv ~/myArch/themes/nagi/.bashrc ~/
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

sudo bash ~/myArch/scripts/zapret.sh

sudo rm -rf ~/myArch
sudo rm -rf ~/install_nagi.sh

systemctl poweroff
