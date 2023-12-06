#!bin/bash

echo "🐋 Installing Docker..."
sleep 1

#https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#https://docs.docker.com/desktop/install/ubuntu/
wget -O docker-desktop.deb https://desktop.docker.com/linux/main/amd64/docker-desktop-4.22.0-amd64.deb
sudo apt-get update
sudo apt-get -y install ./docker-desktop.deb
rm -f ./docker-desktop.deb
