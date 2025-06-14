#!/bin/bash

sudo chmod +x ~/myArch/.config/hypr/vscode.sh Brightness.sh Volume.sh TouchPad.sh
sudo chmod +x ~/myArch/conf/blobdrop.sh blobdrop_gif_mp4.sh blobdrop_mp3.sh blobdrop_png_jpg.sh
sudo chmod +x ~/myArch/.config/rofi/launcher.sh launcher-calc.sh launcher-emoji.sh
sudo chmod +x ~/myArch/.config/hypr/Themes/pywal-obsidian/pywal-obsidian.sh
sudo chmod +x ~/myArch/scripts/secureboot.sh

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
sudo pacman -S mpv brightnessctl ttf-ubuntu-font-family reflector mpv ttf-hack firefox ttf-opensans ipset power-profiles-daemon mako mtpfs gvfs-mtp libmtp dotnet-sdk nemo rofi rofi-calc rofi-emoji nftables ibus pavucontrol dnscrypt-proxy python-pywal flatpak imv proton-vpn-gtk-app fastfetch neofetch cmatrix waybar qbittorrent pamixer network-manager-applet steam obsidian file-roller nwg-look btop noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-hannom xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xdg-desktop-portal-wlr xdg-desktop-portal ttf-font-awesome plasma-framework5 lib32-sdl2 dnsutils telegram-desktop syncthing webkit2gtk sbsigntools mokutil refind efitools
yay -S hyprpicker swww-git swengine clipse hyprshot cava youtube-music-bin vesktop-bin yandex-music bluetuith-bin onlyoffice-bin ttf-font-icons ttf-ionicons protontricks hyprlock hypridle bluez blobdrop-git bluez-utils bluez-deprecated-tools cliphist python-pywalfox visual-studio-code-bin spotify portproton waybar-updates shim-signed
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
sudo mv ~/myArch/conf/blobdrop.sh blobdrop_gif_mp4.sh blobdrop_mp3.sh blobdrop_png_jpg.sh $HOME/.local/share/nemo/scripts/

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

echo "Do you want install Chaotic-AUR? (y/n)"

read chaotic

if [ $chaotic = "y" ]; then
    sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
    sudo pacman-key --lsign-key 3056513887B78AEB
    sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
    sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
    sudo mv $HOME/myArch/conf/pacman-chaotic-aur.conf /etc/pacman.conf
    sudo pacman -Syu
else
    echo "Done"
fi

echo "Will you be installing Windows with Dual Boot? (y/n)"

read secureboot

if [ $secureboot = "y" ]; then
    bash $HOME/myArch/scripts/secureboot.sh
else
    echo "Done"
fi


echo "Do you want install Zapret? (y/n)"

read zapret

if [ $zapret = "y" ]; then
   sudo chmod +x ~/myArch/scripts/dpi.sh
   bash $HOME/myArch/scripts/dpi.sh
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/Snowy-Fluffy/zapret.installer/refs/heads/main/installer.sh)"
else
    echo "Done"
fi


nwg-look 
swengine 
