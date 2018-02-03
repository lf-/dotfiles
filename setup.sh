#!/bin/bash

if [[ ! `which nvim` ]] ; then
  echo "You don't seem to have nvim. I no longer care about normal vim and this WILL NOT work under it."
  exit 1
fi


# Installer for vimrc and plugins
#git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall
