#!/bin/bash

sudo chmod +x ~/myArch/.config/hypr/vscode.sh
sudo chmod +x ~/myArch/.config/hypr/brightness.sh
sudo chmod +x ~/myArch/.config/rofi/launcher.sh
sudo chmod +x ~/myArch/.config/rofi/launcher-calc.sh
sudo chmod +x ~/myArch/.config/rofi/launcher-emoji.sh
sudo chmod +x ~/myArch/.config/hypr/Themes/Chrome/generate-themes.sh
sudo chmod +x ~/myArch/.config/hypr/Themes/pywal-obsidian/pywal-obsidian.sh

cd /opt/
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R ligoz:ligoz yay/
cd yay/
makepkg -si

sudo rm -rf /etc/pacman.conf
sudo mv ~/myArch/conf/pacman.conf /etc/

sudo rm -rf /etc/local.gen
sudo mv ~/myArch/conf/locale.gen /etc/
sudo localectl set-locale ru_RU.UTF-8
sudo locale-gen

cd ~
sudo pacman -S ttf-ubuntu-font-family ttf-hack firefox ttf-opensans ipset power-profiles-daemon mako mtpfs gvfs-mtp libmtp dotnet-sdk nemo rofi rofi-calc rofi-emoji nftables ibus pavucontrol dnscrypt-proxy python-pywal flatpak imv proton-vpn-gtk-app fastfetch neofetch cmatrix waybar qbittorrent network-manager-applet steam obsidian file-roller nwg-look btop noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-hannom xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xdg-desktop-portal-wlr xdg-desktop-portal ttf-font-awesome plasma-framework5 lib32-sdl2 dnsutils telegram-desktop syncthing webkit2gtk
yay -S hyprpicker swww-git swengine clipse cava google-chrome youtube-music-bin vesktop-bin yandex-music bluetuith-bin onlyoffice-bin osu-lazer-bin ttf-font-icons ttf-ionicons protontricks hyprlock hypridle bluez bluez-utils bluez-deprecated-tools cliphist visual-studio-code-bin spotify portproton waybar-updates
flatpak install flathub io.github.Soundux
sudo pacman -Rns wofi dunst vim dolphin

sudo systemctl enable bluetooth
sudo systemctl start bluetooth
sudo systemctl enable power-profiles-daemon.service
sudo systemctl start power-profiles-daemon.service
sudo rfkill unblock all
sudo mkdir /etc/init.d
sudo mv ~/myArch/conf/autostart /etc/init.d/
sudo chmod +x /etc/init.d/autustart
sudo mv ~/myArch/conf/autostart.service /etc/systemd/system/
sudo systemctl start autostart
sudo systemctl enable autostart
gsettings set org.cinnamon.desktop.default-applications.terminal exec kitty

sudo cp -i /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf
sudo mv ~/myArch/conf/sddm.conf /etc/

tar -xJf ~/myArch/themes/Kripton-v40.tar.xz
tar -xvzf ~/myArch/themes/cursor.tar.gz 
tar -xJf ~/myArch/themes/papirus-icon-theme-white-folders.tar.xz 
tar -xvzf ~/myArch/themes/simple-sddm.tar.gz 
sudo rm -rf ~/Papirus-Light

sudo rm -rf ~/.config/hypr
sudo mv ~/myArch/.config/hypr ~/.config/
sudo mv ~/myArch/.config/wal ~/.config/
sudo mv ~/myArch/.config/kitty ~/.config/
sudo mv ~/myArch/.config/fastfetch ~/.config/
sudo mv ~/myArch/.config/mako ~/.config/
sudo mv ~/myArch/.config/rofi ~/.config/
sudo mv ~/myArch/.config/waybar ~/.config/
sudo mv ~/myArch/.config/clipse ~/.config/
sudo mv ~/myArch/conf/.swengine_after_run.sh ~/
sudo rm -rf /etc/hosts
sudo mv ~/myArch/conf/hosts /etc/
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

sudo chmod +x ~/myArch/scripts/dpi.sh
bash ~/myArch/scripts/dpi.sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Snowy-Fluffy/zapret.installer/refs/heads/main/installer.sh)"
