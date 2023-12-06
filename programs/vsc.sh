#!/bin/bash

echo "Installing VS Code..."
sleep 1

#https://code.visualstudio.com/docs/setup/linux
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code

function install {
    name="${1}"
    code --install-extension ${name} --force
}
install ms-vscode.cpptools
install ms-python.python
install rust-lang.rust-analyzer
install mads-hartmann.bash-ide-vscode
install ms-azuretools.vscode-docker
install ms-vscode-remote.remote-containers
install mtxr.sqltools
install eamodio.gitlens
