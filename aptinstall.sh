#!/bin/bash

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}


#basic
install htop
install git
install curl
install jq
install tilix


#fd
install fd-find #https://github.com/sharkdp/fd#installation
ln -s $(which fdfind) ~/.local/bin/fd

#Communication
install telegram-desktop

#Media
install chromium-browser
install vlc

#snap install
sudo snap install todoist




