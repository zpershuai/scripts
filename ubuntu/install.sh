#!/usr/bin/env bash
DIR=$(readlink -f "$(dirname "${PWD}/../../../")");
echo $DIR

##vim
sudo apt-get install vim

##git
sudo apt-get install git
ln -sf $DIR/git/gitconfig  ~/.gitconfig

##autojump
sudo apt-get install autojump

##zsh
sudo apt-get install zsh

##oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
ln -sf $DIR/zsh/zshrc  ~/.zshrc
ln -sf $DIR/zsh/zprofile  ~/.zprofile
cp -rf $DIR/oh-my-zsh/*  ~/.oh-my-zsh/
chsh -s /bin/zsh

##cmake
sudo apt-get install cmake

##gcc
sudo apt install gcc

##g++
sudo apt install g++

##tmux
sudo apt install tmux
ln -sf $DIR/tmux  ~/.tmux
~/.tmux/install.sh

##emacs
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt-get update
sudo apt install emacs27

##bat
sudo apt install bat
sudo ln -sf /usr/bin/batcat /usr/bin/bat

##tools
mkdir -p ~/.dotfiles/
ln -sf $DIR/bin  ~/.dotfiles/bin


