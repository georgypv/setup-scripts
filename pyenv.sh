#!/bin/bash

#install prerequisites
#https://www.adaltas.com/en/2021/06/09/pyrepo-project-initialization/
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev

#https://github.com/pyenv/pyenv#automatic-installer
sudo curl https://pyenv.run | bash

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.profile

source ~/.bashrc
source ~/.profile

pyenv install 3.8.17
pyenv install 3.10.12
pyenv install 3.11.4

pyenv global 3.11

# virtual environment plugin in pyenv https://github.com/pyenv/pyenv-virtualenv