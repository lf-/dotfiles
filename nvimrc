set nocompatible              " be iMproved, required
filetype off                  " required

" Use Plug as package manager
call plug#begin('~/.nvim/plugged')

" Plug 'ervandew/supertab'
Plug 'tomtom/tcomment_vim'
Plug 'msanders/snipmate.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-fugitive'
Plug 'jtratner/vim-flavored-markdown'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'

" Python
Plug 'davidhalter/jedi-vim'
Plug 'nvie/vim-flake8'

" All of your Plugs must be added before the following line
call plug#end()
filetype plugin indent on

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
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile
" You mean I can't use fish and vundle at the same time? Wat?
set shell=zsh
set backupdir=~/.nvim/backup//
set directory=~/.nvim/swap//
set undodir=~/.nvim/undo//

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
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

"" Mapping
nnoremap ; :
" chord lk to go directly from insert to ex mode
" also fix the timeout length so I can type polkadots without getting too
" annoyed
set timeoutlen=500
inoremap lk <esc>:
inoremap kl <esc>:
inoremap <C-BS> <C-W>
set pastetoggle=<F2>
tnoremap <C-w>h <C-\><C-n>:wincmd h<CR>
tnoremap <C-w>j <C-\><C-n>:wincmd j<CR>
tnoremap <C-w>k <C-\><C-n>:wincmd k<CR>
tnoremap <C-w>l <C-\><C-n>:wincmd l<CR>

"" Leader commands
let mapleader=","
noremap <M-n> <esc>:tabn<cr>
noremap <M-p> <esc>:tabp<cr>
map <Leader>bi <esc>:source ~/.nvim/vimrc<cr>:PlugInstall<cr>

"" Spacing
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
