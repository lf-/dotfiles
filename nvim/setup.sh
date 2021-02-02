#!/bin/bash

# Installer for vimrc and plugins
#git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall
echo 'Run `:CocInstall coc-python coc-rls coc-json`.
