#!/bin/bash

sudo chmod +x ~/myArch/scripts/dpi.sh
sudo bash ~/myArch/scripts/dpi.sh
cd ~/Документы
git clone https://github.com/Sergeydigl3/zapret-discord-youtube-linux.git
sudo mv myArch/conf/conf.env zapret-discord-youtube-linux/
cd zapret-discord-youtube-linux
sudo bash main_script.sh
sudo bash service.sh
