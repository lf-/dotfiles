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
    let s:uri = matchstr(getline('.'), '[a-z]*:\/\/[^ >,;()"'']*')
    let s:uri = shellescape(s:uri, 1)
    echo 'opened ' . s:uri
    if s:uri != ''
      if exists("$LC_GOOEYD_SOCK") && executable('goo')
        silent exec "!goo open '".s:uri."'"
      elseif has('mac')
        silent exec "!open '".s:uri."'"
      else
        silent exec "!xdg-open '".s:uri."'"
      endif
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
  " ! snvim ~/.config/nvim/lateinit.lua
  edit ~/.config/nvim/lateinit.lua
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

" blah
set ts=4 sts=4 sw=4 et ai

"" Spacing
augroup spacing
  autocmd!
  " the stock html indentexpr is broken as hell
  autocmd FileType html setlocal indentexpr=
  " likewise the nix one is worse than nothing
  autocmd FileType nix setlocal indentexpr=
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

function! s:configure_highlights() abort
  let s:normal_bg = toupper(synIDattr(synIDtrans(hlID("Normal")), 'bg#'))
  exe 'highlight CocHintHighlight guibg=' . color_helper#hex_color_darken(s:normal_bg, 0.40)

  " also make the floating window background have contrast with the normal background
  exe 'highlight CocFloating guibg=' . color_helper#hex_color_darken(s:normal_bg, 0.30)

  exe 'highlight TreesitterContext guibg=' . color_helper#hex_color_darken(s:normal_bg, 0.40)
endfunction

" Make the highlight of inactive code and such much much less obtrusive
if has('gui_running') || &termguicolors
  call s:configure_highlights()
  au ColorScheme * call <SID>configure_highlights()
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
command! SyntaxQuery call <SID>syntax_query()

""""""""""""""""""""""""""""""""""""""
" COMPLETION
""""""""""""""""""""""""""""""""""""""

let g:coc_global_extensions = ['coc-json', 'coc-pyright', 'coc-yaml', 'coc-clangd']

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
