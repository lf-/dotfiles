filetype off                  " required

" Use Plug as package manager
call plug#begin('~/.config/nvim/plugged')

" Editing
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'

Plug 'jbyuki/instant.nvim'

Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'

" UI
Plug 'gcmt/taboo.vim'
Plug 'romainl/flattened'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wesQ3/vim-windowswap'
Plug 'AndrewRadev/undoquit.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'RRethy/nvim-treesitter-textsubjects'

" File types
Plug 'LnL7/vim-nix'
Plug 'alx741/yesod.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'plasticboy/vim-markdown'
Plug 'qnighy/lalrpop.vim'
Plug 'editorconfig/editorconfig-vim'

" All of your Plugs must be added before the following line
call plug#end()
filetype plugin indent on

let g:instant_username = 'jade'

if $COC_DEBUG == '1'
  let g:coc_node_args = ['--nolazy', '--inspect-brk=6045', '-r', expand('~/.config/yarn/global/node_modules/source-map-support/register')]
endif

set modelines=0
set encoding=utf-8
set history=1000

" completion stuff
" allegedly stops bugs in some language servers
set nobackup
set nowritebackup

" more space for the command window on bottom of screen
set cmdheight=2

" aggressively write swap files (maybe used for diagnostics?)
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" add extra column on left for IDE stuff
set signcolumn=yes

" deliberately disable smartindent since it somehow got turned on in python
set autoindent
set nosmartindent

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

" this was needed for fish but is now probs just a perf improvement
set shell=bash

" use chromium on all platforms to open all urls
" this is lazy as hell but I just wnat it to work
" https://github.com/vim/vim/issues/4738
let g:netrw_nogx = 1

if has('unix')
  function! OpenURLUnderCursor()
    let s:uri = matchstr(getline('.'), '[a-z]*:\/\/[^ >,;()]*')
    let s:uri = shellescape(s:uri, 1)
    if s:uri != ''
      silent exec "!xdg-open '".s:uri."'"
      :redraw!
    endif
  endfunction
  nnoremap gx :call OpenURLUnderCursor()<CR>
endif

" inside the internal terminal, stuff calling VISUAL should open in a new vim
" tab in the existing session
let $VISUAL = 'nvimsplit'

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
set cursorline
set number

let g:neovide_cursor_animation_length=0.02
let g:neovide_cursor_trail_length=0

" coc windows have blur on top of them sometimes, workaround
" https://github.com/Kethku/neovide/issues/432
let g:neovide_window_floating_blur = 0
let g:neovide_window_floating_opacity = 0.8

set guifont=Iosevka:h18

" disable built in yesod maps
let g:yesod_disable_maps = 1

" disable folding in vim markdown
let g:vim_markdown_folding_disabled = 1

" attempt a perf improvement? see
" https://github.com/vim-airline/vim-airline/issues/1026
let g:airline_highlighting_cache = 1

" our fonts support powerline symbols
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
set listchars=tab:\ \ ,trail:•

let g:bookmark_save_per_working_dir = 1

""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""

let g:windowswap_map_keys = 0

function! OpenVimrc()
  ! snvim ~/.config/nvim/init.vim
endfunction

function! DeleteWindow()
  call WindowSwap#MarkWindowSwap()
  hide
endfunction

"""""""""""""""""""""""""
" Editing
"""""""""""""""""""""""""

" Use only one space while joining lines ending with a period
set nojoinspaces

augroup termfix
  " scrolloff causes annoying flashing in terminals
  " NOTE: if you are looking for the scrolloff bug, it's this. scrolloff is
  " *window local*
  autocmd TermOpen * setlocal scrolloff=0

  " check file modification on exiting terminal
  autocmd TermLeave * checktime
augroup END

function! SetFormatOptions()
  if &ft =~ 'gitcommit'
    return
  endif
  if &ft =~ 'text'
      setlocal textwidth=79
      return
  endif
  setlocal formatoptions=roqnlj
endfunction

" The default is to set formatoptions to automatically wrap comments
augroup formatoptions
  autocmd!
  autocmd FileType * call SetFormatOptions()
  autocmd FileType gitcommit setlocal spell
augroup END

augroup highlightingfix
  autocmd!
  " shakespearean templates ≈ their respective languages, and I'd rather have
  " shitty highlighting than no highlighting
  au BufRead,BufNewFile *.julius setlocal filetype=javascript
  au BufRead,BufNewFile *.cassius setlocal filetype=css
  au BufRead,BufNewFile *.hamlet setlocal filetype=html
augroup END

" blah
set ts=4 sts=4 sw=4 et ai

"" Spacing
augroup spacing
  autocmd!
  autocmd FileType python setlocal sw=4 sts=4 et
  autocmd FileType docker-compose setlocal ts=4 sts=4 sw=4 et ai
  autocmd FileType cabal setlocal sw=4 sts=4 ts=4 et ai
  autocmd FileType haskell setlocal sw=4 sts=4 ts=4 et ai
  autocmd FileType yesod setlocal sw=4 sts=4 ts=4 et ai
  autocmd FileType vim setlocal sw=2 sts=2 ts=2 et ai
  autocmd FileType json setlocal sw=2 sts=2 ts=2 et ai
  " the default plugin for this sets tw to 100 or something. I don't use the
  " formatoption to format while typing so this only matters for comments
  " where 79 is better.
  autocmd FileType rust setlocal tw=79
augroup END

set title
augroup titling
  autocmd!
  autocmd BufEnter * let &titlestring = 'nvim: ' . fnamemodify(getcwd(), ':t') . ' - ' . expand('%:t')
augroup END

command! -range TitleCase :s/\v<(.)(\w*)/\u\1\L\2/g
" turns input logic [1:0] blah,
" into .blah(blah)
command! -range VerilogPorts :<line1>,<line2>s/\v.* (\w+),?$/.\1(\1),/
command! -range VerilogDecls :<line1>,<line2>s/\v^\s+(input|output) (.{-}),?$/\2;/

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

""""""""""""""""""""""""""""""""""""""
" Highlight
""""""""""""""""""""""""""""""""""""""

if $TERM == 'alacritty' || $COLORTERM == 'truecolor' || $WT_SESSION != ''
  set termguicolors
endif

syntax enable
set background=dark
colorscheme flattened_dark

highlight Normal guisp=fg

" make rust-analyzer ChainingHints a different colour than the rest of the
" code
highlight CocHintSign ctermfg=10 guifg=#586e75

" likewise on code lenses
highlight! link CocCodeLens CocHintSign

" Make the highlight of inactive code and such much much less obtrusive
if has('gui_running') || &termguicolors
  let s:normal_bg = toupper(synIDattr(synIDtrans(hlID("Normal")), 'bg#'))
  exe 'highlight CocHintHighlight guibg=' . color_helper#hex_color_darken(s:normal_bg, 0.40)

  " also make the floating window background have contrast with the normal background
  exe 'highlight CocFloating guibg=' . color_helper#hex_color_darken(s:normal_bg, 0.30)
endif

" By default the search highlight is very obvious and kinda ugly. we make it
" quieter
highlight Search cterm=reverse ctermfg=10 guifg=Black guibg=fg

" Get the highlight groups under the cursor
function! s:syntax_query() abort
  for id in synstack(line("."), col("."))
    echo synIDattr(id, "name")
  endfor
endfunction
command! SyntaxQuery call s:syntax_query()

""""""""""""""""""""""""""""""""""""""
" COMPLETION
""""""""""""""""""""""""""""""""""""""

let g:coc_global_extensions = ['coc-rust-analyzer', 'coc-json', 'coc-pyright', 'coc-yaml', 'coc-clangd']

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

runtime lateinit.lua
