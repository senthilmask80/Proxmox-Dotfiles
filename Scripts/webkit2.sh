#! /bin/bash

if command_exists nvm; then
  echo "NVM and NodeJS already installed"
  return
fi
  # you already have what is necessary on your system to install NVM. To do this, perform the following step:
if ! curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash; then 
  echo "Successfully NVM and NodeJS installed"
  return
else
  source ~/.bashrc

  # I chose the latest LTS version, by the time I'm writing this * Gist *, it's v8.9.1. You can install it by typing:
  nvm install v8.9.1

  # To set a version of the node as default, run the following command:
  nvm alias default 8.9.1

  # Installing the vue-cli
  npm install -g vue-cli

  npm install -g vue-cli --force

  # install the lightdm-webkit2-greeter themes Saluto
  git clone https://github.com/Demonstrandum/Saluto.git /tmp/Saluto/

  cd /tmp/Saluto/
  sh ./install.sh

  cd /tmp/
  wget https://github.com/Litarvan/lightdm-webkit-theme-litarvan/releases/download/v3.2.0/lightdm-webkit-theme-litarvan-3.2.0.tar.gz
  tar xvfz lightdm-webkit-theme-litarvan-3.2.0.tar.gz -C /usr/share/lightdm-webkit/themes/
fi
