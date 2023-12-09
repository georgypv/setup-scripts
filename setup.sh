#!bin/bash  
 
chmod u+x aptinstall.sh rust.sh programs.sh update-alternatives.sh pyenv.sh poetry.sh get-test-data.sh;
chmod u+x programs/*.sh;

./aptinstall.sh
./rust.sh
./programs.sh
./update-alternatives.sh
./pyenv.sh
./poetry.sh
./get-test-data.sh

sudo apt upgrade -y
source ~/.bashrc
source ~/.profile