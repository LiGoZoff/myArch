#!/bin/bash

sudo chmod +x ~/myArch/scripts/dpi.sh
bash ~/myArch/scripts/dpi.sh
cd ~
git clone https://github.com/Sergeydigl3/zapret-discord-youtube-linux.git
sudo mv myArch/conf/conf.env zapret-discord-youtube-linux/
