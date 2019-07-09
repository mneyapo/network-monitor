#!/bin/bash

mkdir ~/bin

cd ~/bin

git clone https://github.com/mneyapo/network-monitor.git

cd network-monitor

sudo mv network-monitor.sh ..

cd ..

ls

sudo rm -r network-monitor

sudo chmod +x ~/bin/network-monitor.sh

cd

source ~/.bashrc

echo "*/5 * * * * root bash /home/pi/bin/network-monitor.sh"  | sudo tee -a /etc/crontab

cat /etc/crontab
