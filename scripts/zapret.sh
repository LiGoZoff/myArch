#!/bin/bash

sudo chmod +x ~/myArch/scripts/dpi.sh
sudo bash ~/myArch/scripts/dpi.sh
tar -xvzf ~/myArch/conf/zapret.tar.gz
sudo mv ~/zapret /opt/
cd /opt/zapret
sudo bash install_bin.sh
sudo bash install_prereq.sh
sudo bash install_easy.sh
