#!/bin/bash

# Update apt-get repo
sudo apt-get update

# Install - git
sudo apt-get install -y git-core

# Install - npm
sudo apt-get install -y npm

# Setup dot files
git clone https://github.com/yang6n/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .

# Install links & vim & screen
sudo apt-get -y install links vim screen

# Install - curl wget tree
sudo apt-get install -y curl wget tree
