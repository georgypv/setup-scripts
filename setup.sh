#!bin/bash  
 
chmod u+x aptinstall.sh programs.sh update-alternatives.sh pyenv.sh poetry.sh get-test-data.sh;
chmod u+x programs/*.sh;

./aptinstall.sh
./programs.sh
./update-alternatives.sh
./pyenv.sh
./poetry.sh
./get-test-data.sh

sudo apt upgrade -y
source ~/.bashrc
source ~/.profile