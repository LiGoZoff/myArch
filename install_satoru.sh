#!/bin/bash

nmcli device wifi connect Xiaomi_0298 password 59563129

git clone https://github.com/LiGoZoff/myArch.git
sudo chmod +x ~/myArch/.config/hypr/vscode.sh
sudo chmod +x ~/myArch/.config/rofi/launchers/type-6/launcher.sh
sudo chmod +x ~/myArch/.config/rofi/powermenu/type-4/powermenu.sh
sudo bash ~/myArch/scripts/install.sh


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

sudo bash ~/myArch/scripts/zapret.sh

sudo rm -rf ~/myArch
sudo rm -rf ~/install_satoru.sh

systemctl poweroff
