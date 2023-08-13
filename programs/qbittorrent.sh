#!/bin/bash

echo "Installing qbittorrent..."
#https://linuxways.net/ubuntu/how-to-install-qbittorrent-on-ubuntu-20-04/
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable
sudo apt update
sudo apt install qbittorrent