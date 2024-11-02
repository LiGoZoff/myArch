#!/bin/bash

nmcli device wifi connect Xiaomi_0298 password 59563129

git clone https://github.com/LiGoZoff/myArch.git
sudo chmod +x ~/myArch/.config/hypr/vscode.sh
sudo chmod +x ~/myArch/themes/nagi/rofi/launchers/launcher.sh
sudo chmod +x ~/myArch/themes/nagi/rofi/powermenu/powermenu.sh
sudo chmod +x ~/myArch/scripts/install.sh
sudo chmod +x ~/myArch/scripts/zapret.sh

cd /opt/
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R ligoz:ligoz yay/
cd yay/; makepkg -si

sudo rm -rf /etc/pacman.conf
sudo mv ~/myArch/conf/pacman.conf /etc/

sudo rm -rf /etc/local.gen
sudo mv ~/myArch/conf/locale.gen /etc/
sudo localectl set-locale ru_RU.UTF-8
sudo locale-gen

sudo bash ~/myArch/scripts/install.shn

sudo systemctl enable bluetooth
sudo systemctl start bluetooth
sudo rfkill unblock all
sudo mkdir /etc/init.d
sudo mv ~/myArch/conf/rfkillunblock /etc/init.d/
sudo chmod +x /etc/init.d/rfkillunblock
sudo mv ~/myArch/conf/rfkillunblock.service /etc/systemd/system/
sudo systemctl start rfkillunblock
sudo systemctl enable rfkillunblock
gsettings set org.cinnamon.desktop.default-applications.terminal exec kitty

sudo cp -i /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf
sudo mv ~/myArch/conf/sddm.conf /etc/


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
