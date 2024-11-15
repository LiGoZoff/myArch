#!/bin/bash

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

sudo bash ~/myArch/scripts/install.sh

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

cd ~
sudo pacman -S swaybg mako nemo alacritty rofi flatpak pavucontrol dnscrypt-proxy imv htop fastfetch qjackctl neofetch cmatrix waybar qbittorrent network-manager-applet steam file-roller nwg-look btop noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-hannom xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xdg-desktop-portal-wlr xdg-desktop-portal ttf-font-awesome plasma-framework5 lib32-sdl2 dnsutils webkit2gtk
yay -S hyprpicker clipse cava google-chrome youtube-music-bin telegram-desktop-bin vesktop-bin yandex-music bluetuith-bin onlyoffice-bin osu-lazer-bin ttf-font-icons ttf-ionicons hyprlock hypridle bluez bluez-utils bluez-deprecated-tools cliphist visual-studio-code-bin
flatpak install flathub net.lutris.Lutris
sudo pacman -Rns wofi dunst vim dolphin
