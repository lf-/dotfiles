set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'ervandew/supertab'
Plugin 'tomtom/tcomment_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Settings for sanity
set modelines=0 " modelines are useless
set encoding=utf-8
set scrolloff=3
set history=500 " 500 lines of history
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile
" WHAT DO YOU MEAN IT MATTERS WHAT SHELL I USE IN FREAKING VIM???
set shell=bash
set expandtab
set sw=2
set ts=2
set sts=2
set smarttab
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Mapping
nnoremap ; :
" Leader commands
let mapleader=","
map <Leader>bi <esc>:source ~/.vim/vimrc<cr>:PluginInstall<cr>
set pastetoggle=<F2>

" Spacing 
augroup spacing 
  autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib
  autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
  " ? is part of a word
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?
  autocmd FileType conf setlocal et!
augroup END
" % works in more cases
runtime macros/matchit.vim
