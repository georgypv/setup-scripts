#!bin/bash  
 
./aptinstall.sh
./programs.sh
./update-alternatives.sh
./pyenv.sh
./get-test-data.sh

sudo apt upgrade -y
source ~/.bashrc
source ~/.profile