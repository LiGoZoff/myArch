#!/bin/bash

nmcli device wifi connect Xiaomi_0298_5G password 59563129

git clone https://github.com/LiGoZoff/myArch.git
sudo chmod +x ~/myArch/.config/hypr/vscode.sh
sudo chmod +x ~/myArch/.config/rofi/launchers/type-6/launcher.sh
sudo chmod +x ~/myArch/.config/rofi/powermenu/type-4/powermenu.sh
sudo chmod +x ~/myArch/install_themes_nagi.sh
sudo chmod +x ~/myArch/install_themes_satoru.sh
sudo chmod +x ~/myArch/install.sh

cd /opt/
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R ligoz:ligoz yay/
cd yay/; makepkg -si

sudo rm -rf /etc/pacman.conf
sudo mv ~/myArch/conf/pacman.conf /etc/

sudo rm -rf /etc/local.gen
sudo mv ~/myArch/conf/locale.gen
sudo localectl set-locale ru_RU.UTF-8
sudo locale-gen

cd ~
./myArch/install.sh
sudo rm -rf ~/.config/hypr/hyprland.conf
sudo cp ~/myArch/themes/nagi/hyprland.conf ~/.config/hypr/

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

mv ~/myArch/install_themes_nagi.sh ~/
mv ~/myArch/install_themes_satoru.sh ~/

sudo cd /opt; sudo git clone https://github.com/bol-van/zapret.git
cd zapret; sudo bash install_bin.sh
sudo bash install_prereq.sh

sudo chmod +x ~/myArch/conf/dpi.sh
sudo bash ~/myArch/conf/dpi.sh

sudo bash blockcheck.sh
sudo bash install_easy.sh
