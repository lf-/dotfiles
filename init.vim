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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Python
Plug 'davidhalter/jedi-vim'
Plug 'nvie/vim-flake8'

" web
Plug 'mattn/emmet-vim'

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
" Avoid unintentionally causing suicide with the auto from completion in jedi
let g:jedi#smart_auto_mappings = 0

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

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" remove annoying hamburger symbol
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

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

"""""""""""""""""""""""""
" Editing
"""""""""""""""""""""""""

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

set tabstop=4

"""""""""""""""""""""""""
" Hacks
"""""""""""""""""""""""""
" % works in more cases
runtime macros/matchit.vim
