#!/bin/bash

cd ~

# Update apt-get repo
sudo apt-get dist-upgrade -y
sudo apt-get update

# Install - git
sudo apt-get install -y git-core

# Configure - git
git config --global user.email "yang6n@gmail.com"
git config --global user.name "Jian Yang"
git config --global push.default simple
git config --global credential.helper 'store --file ~/.git-credentials'

# Install - npm
# sudo apt-get install -y npm

# Install links & vim & screen
sudo apt-get -y install links vim screen

# Install - curl wget tree
sudo apt-get install -y curl wget tree

# Install - zsh
sudo apt-get install -y zsh

# Install cfr
wget http://www.benf.org/other/cfr/cfr_0_122.jar --output-document ~/applications/cfr/cfr_0_122.jar
ln -sb ~/applications/cfr/cfr_0_122.jar ~/applications/cfr/cfr.jar

# Install - on-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Change default shell
chsh -s $(which zsh)

# Setup dot files
git clone https://github.com/yang6n/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
ln -sb dotfiles/.vimrc .
ln -sb dotfiles/.zshrc .
ln -sb dotfiles/.zshrc_custom .
ln -sb ~/dotfiles/theme/jyang.zsh-theme ~/.oh-my-zsh/themes
