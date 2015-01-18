#!/bin/bash

# Installer for vimrc and plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
