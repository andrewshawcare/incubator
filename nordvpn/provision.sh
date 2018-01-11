#!/bin/sh
wget https://downloads.nordcdn.com/configs/archives/servers/ovpn.zip
unzip -f ./ovpn.zip -d "${HOME}"
rm ./ovpn.zip

sudo apt install --yes network-manager-openvpn-gnome
sudo service network-manager restart