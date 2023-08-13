#!/bin/bash

#https://linuxhint.com/install_wine_-ubuntu_2204/
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo mv winehq-jammy.sources /etc/apt/sources.list.d/
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo mv winehq.key /usr/share/keyrings/winehq-archive.key

sudo apt install --install-recommends winehq-stable