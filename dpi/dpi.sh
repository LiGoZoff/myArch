#!/bin/bash

sudo rm -rf /opt/zapret/config
sudo mv ~/myArch/dpi/config /opt/zapret/
sudo rm -rf /opt/zapret/ipset/zapret-hosts-user.txt
sudo mv ~/myArch/dpi/zapret-hosts-user.txt /opt/zapret/ipset/
sudo rm -rf /opt/zapret/init.d/sysv/custom
sudo mv ~/myArch/dpi/custom /opt/zapret/init.d/sysv/
cd /opt/zapret
sudo bash install_easy.sh
