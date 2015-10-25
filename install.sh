#!/bin/bash

# install depency software
# install homebrew
# ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
# install tmux
# brew install tmux
#install git 
#brew install git

echo "Install vim configurations..."

echo "create .vimrc"
PWD=`pwd`
rm ~/.vimrc -rf
rm ~/.vim -rf
rm ~/.gvimrc -rf

ln -s ${PWD}/vimrc ~/.vimrc
ln -s ${PWD}/vimrc ~/.gvimrc
ln -s ${PWD} ~/.vim

#echo "update submodules"
git submodule init
git submodule update


