#!/bin/bash

echo "Installing Obsidian..."
sleep 1
wget -O obsidian.deb https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.7/obsidian_1.3.7_amd64.deb
sudo apt-get -y install ./obsidian.deb
rm -f obsidan.deb