#!/bin/bash

sudo rm -rf /opt/zapret/config
sudo mv ~/config /opt/zapret/
sudo rm -rf /opt/zapret/ipset/zapret-hosts-user.txt
sudo mv ~/zapret-hosts-user.txt /opt/zapret/ipset/
sudo rm -rf /opt/zapret/init.d/sysv/custom
sudo mv ~/custom /opt/zapret/init.d/sysv/