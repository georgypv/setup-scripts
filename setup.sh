#!bin/bash  
 
./aptinstall.sh
./programs.sh
./update-alternatives.sh
./pyenv.sh
./poetry.sh

sudo apt upgrade -y
source ~/.bashrc
source ~/.profile