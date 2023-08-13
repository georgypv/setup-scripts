#!/bin/bash

echo "Installing Zoom..."
wget -O zoom.deb https://zoom.us/client/5.15.7.6521/zoom_amd64.deb
sudo apt-get -y install zoom.deb
rm -f zoom.deb