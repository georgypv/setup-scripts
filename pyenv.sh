#!/bin/bash

#https://github.com/pyenv/pyenv#automatic-installer
sudo curl https://pyenv.run | bash

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.profile

soruce ~/.bashrc
source ~/.profile

pyenv install 3.8.17
pyenv install 3.10.12
pyenv install 3.11.4

pyenv global 3.11

# virtual environment plugin in pyenv https://github.com/pyenv/pyenv-virtualenv