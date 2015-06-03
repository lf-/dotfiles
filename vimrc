set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'ervandew/supertab'
Plugin 'tomtom/tcomment_vim'
Plugin 'msanders/snipmate.vim'
Plugin 'tpope/vim-surround'
Plugin 'bruno-/vim-alt-mappings'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Settings for sanity
set modelines=0 " modelines are useless
set encoding=utf-8
set history=1000
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
set undofile
" You mean I can't use fish and vundle at the same time? Wat?
set shell=bash
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

"""""""""""""""""""""""""
" Text UI
"""""""""""""""""""""""""

"" Movement
set scrolloff=7
set showmatch
if has('mouse')
  set mouse=a
endif

"" Search
set incsearch
set hlsearch
set ignorecase
set smartcase
set nolazyredraw

"" Visual stuff
syntax enable
set background=dark
colorscheme solarized
set relativenumber
set number
let g:airline_powerline_fonts = 1
set list
set listchars=trail:•

" Mapping
nnoremap ; :
" chord lk to go directly from insert to ex mode
inoremap lk <esc>:
inoremap kl <esc>:
inoremap <C-BS> <C-W>
set pastetoggle=<F2>

" Leader commands
let mapleader=","
noremap <M-n> <esc>:tabn<cr>
noremap <M-p> <esc>:tabp<cr>
map <Leader>bi <esc>:source ~/.vim/vimrc<cr>:PluginInstall<cr>

" Spacing
augroup spacing
  autocmd FileType ruby,eruby,yaml setlocal si sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib
  autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
  " ? is part of a word
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?
  autocmd FileType conf setlocal et!

  autocmd FileType python setlocal si sw=4 sts=4 et
augroup END
" % works in more cases
runtime macros/matchit.vim
