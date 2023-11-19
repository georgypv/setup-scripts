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


install htop
install wget
install git
install curl
install jq
install tilix #better terminal
install wajig #better package management
install openjdk-11-jdk #java 11
#fd
install fd-find #https://github.com/sharkdp/fd#installation
ln -s $(which fdfind) ~/.local/bin/fd

# https://stackoverflow.com/a/60374453
install libffi-dev


#Communication
install telegram-desktop

#Media
install chromium-browser
install vlc






