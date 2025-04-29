#!/bin/bash

nmcli device wifi connect Xiaomi_0298_5G password 59563129

git clone https://github.com/LiGoZoff/myArch.git
sudo chmod +x ~/myArch/scripts/install.sh
./myArch/scripts/install.sh

sudo rm -rf ~/myArch
sudo rm -rf ~/install_arch.sh

nwg-look
swengine
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Snowy-Fluffy/zapret.installer/refs/heads/main/installer.sh)"
