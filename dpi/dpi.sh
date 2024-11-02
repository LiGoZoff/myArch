#!/bin/bash

sudo mv /opt/zapret/init.d/sysv/custom.d.examples/50-discord /opt/zapret/init.d/sysv/custom.d/
sudo rm -rf /opt/zapret/config.default
sudo mv /home/ligoz/myArch/dpi/config.default /opt/zapret/

cd /opt/zapret
sudo bash install_easy.sh
