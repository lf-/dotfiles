filetype plugin indent on

if $COC_DEBUG == '1'
  let g:coc_node_args = ['--nolazy', '--inspect-brk=6045', '-r', expand('~/.config/yarn/global/node_modules/source-map-support/register')]
endif

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

""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""

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

augroup termfix
  " scrolloff causes annoying flashing in terminals
  " NOTE: if you are looking for the scrolloff bug, it's this. scrolloff is
  " *window local*
  autocmd TermOpen * setlocal scrolloff=0

  " check file modification on exiting terminal
  autocmd TermLeave * checktime
augroup END

" The default is to set formatoptions to automatically wrap comments
augroup formatoptions
  autocmd!
  autocmd FileType * lua set_format_options()
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
  " the stock html indentexpr is broken as hell
  autocmd FileType html setlocal indentexpr=

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
  autocmd FileType rust setlocal tw=79 fo+=c
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