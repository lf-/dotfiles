" Author:   Nate Kane <nathanaelkane AT gmail DOT com>
" Homepage: http://github.com/nathanaelkane/vim-indent-guides

"
" Toggles the indent guides on and off.
"
function! indent_guides#toggle()
  call indent_guides#init_matches()

  if empty(w:indent_guides_matches)
    call indent_guides#enable()
  else
    call indent_guides#disable()
  endif
endfunction

"
" Called from autocmds, keeps indent guides enabled or disabled when entering
" other buffers and windows.
"
function! indent_guides#process_autocmds()
  if g:indent_guides_autocmds_enabled
    call indent_guides#enable()
  else
    call indent_guides#disable()
  end
endfunction

"
" Enables the indent guides for the current buffer and any other buffer upon
" entering it.
"
function! indent_guides#enable()
  let g:indent_guides_autocmds_enabled = 1

  if &diff || indent_guides#exclude_filetype()
    call indent_guides#clear_matches()
    return
  end

  call indent_guides#init_script_vars()
  call indent_guides#highlight_colors()
  call indent_guides#clear_matches()

  " loop through each indent level and define a highlight pattern
  " will automagically figure out whether to use tabs or spaces
  for l:level in range(s:start_level, s:indent_levels)
    let l:group = 'IndentGuides' . (l:level % len(s:colors))
    let l:column_start = (l:level - 1) * s:indent_size + 1

    " define the higlight patterns and add to matches list
    if g:indent_guides_space_guides
      let l:soft_pattern = indent_guides#indent_highlight_pattern(g:indent_guides_soft_pattern, l:column_start, s:guide_size)
      call add(w:indent_guides_matches, matchadd(l:group, l:soft_pattern))
    end
    if g:indent_guides_tab_guides
      let l:hard_pattern = indent_guides#indent_highlight_pattern('\t', l:column_start, s:indent_size)
      call add(w:indent_guides_matches, matchadd(l:group, l:hard_pattern))
    end
  endfor
endfunction

"
" Disables the indent guides for the current buffer and any other buffer upon
" entering it.
"
function! indent_guides#disable()
  let g:indent_guides_autocmds_enabled = 0
  call indent_guides#clear_matches()
endfunction

"
" Clear all highlight matches for the current window.
"
function! indent_guides#clear_matches()
  call indent_guides#init_matches()
  if !empty(w:indent_guides_matches)
    let l:index = 0
    for l:match_id in w:indent_guides_matches
      try
        call matchdelete(l:match_id)
      catch /E803:/
        " Do nothing
      endtry
      call remove(w:indent_guides_matches, l:index)
      let l:index += l:index
    endfor
  endif
endfunction

"
" Automagically calculates and defines the indent highlight colors.
"
function! indent_guides#highlight_colors()
  if s:auto_colors
    if has('gui_running') || has('nvim')
      call indent_guides#gui_highlight_colors()
    else
      echo "non nvim/gui_running is not supported"
      "call indent_guides#basic_highlight_colors()
    endif
  endif
endfunction

" default term colors are try ur best i am not trying
let s:termcolors = [0, 8, 0, 8]

"
" Automagically calculates and defines the indent highlight colors for gui
" vim.
"
function! indent_guides#gui_highlight_colors()
  let l:hi_normal_guibg = ''
  let l:ctermfg = ' ctermfg=' . ((&g:background == 'dark') ? 'white' : 'black')

  if s:hi_normal =~ s:color_termfg_pat
    let l:ctermfg = ' ctermfg=' . matchstr(s:hi_normal, s:color_termfg_pat)
  endif

  " capture the backgroud color from the normal highlight
  if s:hi_normal =~ s:color_hex_bg_pat
    " hex color code is being used, eg. '#FFFFFF'
    let l:hi_normal_guibg = matchstr(s:hi_normal, s:color_hex_bg_pat)

  elseif s:hi_normal =~ s:color_name_bg_pat
    " color name is being used, eg. 'white'
    let l:color_name = matchstr(s:hi_normal, s:color_name_bg_pat)
    let l:hi_normal_guibg = color_helper#color_name_to_hex(l:color_name)

  else
    " background color could not be detected, default to basic colors
    echo "non nvim/gui_running is not supported"
    "call indent_guides#basic_highlight_colors()
  endif

  if l:hi_normal_guibg =~ s:color_hex_pat
    for l:i in range(len(s:colors))
      let l:col = s:colors[i]
      let l:tcol = s:termcolors[i]
      let l:new_bg = color_helper#combine(l:hi_normal_guibg, l:col[0], l:col[1], l:col[2], s:alpha)

      exe 'hi IndentGuides' . l:i . ' guibg=' . l:new_bg . ' guifg=' . l:hi_normal_guibg . ' ctermbg=' . l:tcol . l:ctermfg
    endfor
  end
endfunction

let s:max_colors = 8

"
" Define default highlights.
"
function! indent_guides#define_default_highlights()
  " XXX: this is hardcoded to max 8 colors. bleh
  for l:i in range(s:max_colors)
    exe 'hi default clear IndentGuides' . l:i
  endfor
endfunction

"
" Init the w:indent_guides_matches variable.
"
function! indent_guides#init_matches()
  let w:indent_guides_matches = exists('w:indent_guides_matches') ? w:indent_guides_matches : []
endfunction

"
" We need to initialize these vars every time a buffer is entered while the
" plugin is enabled.
"
function! indent_guides#init_script_vars()
  if &l:shiftwidth > 0 && &l:expandtab
    let s:indent_size = &l:shiftwidth
  else
    let s:indent_size = &l:tabstop
  endif
  let s:guide_size  = indent_guides#calculate_guide_size()
  let s:hi_normal   = indent_guides#capture_highlight('Normal')

  " remove 'font=<value>' from the s:hi_normal string (only seems to happen on Vim startup in Windows)
  let s:hi_normal = substitute(s:hi_normal, ' font=[A-Za-z0-9:]\+', "", "")

  " shortcuts to the global variables - this makes the code easier to read
  let s:debug             = g:indent_guides_debug
  let s:indent_levels     = g:indent_guides_indent_levels
  let s:auto_colors       = g:indent_guides_auto_colors
  let s:color_hex_pat     = g:indent_guides_color_hex_pattern
  let s:color_hex_bg_pat  = g:indent_guides_color_hex_guibg_pattern
  let s:color_name_bg_pat = g:indent_guides_color_name_guibg_pattern
  let s:color_termfg_pat  = g:indent_guides_color_termfg
  let s:start_level       = g:indent_guides_start_level

  " precompute these things applying them to the background colour
  let s:colors = g:indent_guides_colors
  let s:alpha = g:indent_guides_alpha

  if s:debug
    echo 's:indent_size = '       . s:indent_size
    echo 's:guide_size = '        . s:guide_size
    echo 's:hi_normal = '         . s:hi_normal
    echo 's:indent_levels = '     . s:indent_levels
    echo 's:auto_colors = '       . s:auto_colors
    echo 's:color_hex_pat = '     . s:color_hex_pat
    echo 's:color_hex_bg_pat = '  . s:color_hex_bg_pat
    echo 's:color_name_bg_pat = ' . s:color_name_bg_pat
    echo 's:start_level = '       . s:start_level
  endif
endfunction

"
" Calculate the indent guide size. Ensures the guide size is less than or
" equal to the actual indent size, otherwise some weird things can occur.
"
" NOTE: Currently, this only works when soft-tabs are being used.
"
function! indent_guides#calculate_guide_size()
  let l:guide_size = g:indent_guides_guide_size

  if l:guide_size == 0 || l:guide_size > s:indent_size
    let l:guide_size = s:indent_size
  endif

  return l:guide_size
endfunction

"
" Captures and returns the output of highlight group definitions.
"
" Example: indent_guides#capture_highlight('normal')
" Returns: 'Normal xxx guifg=#323232 guibg=#ffffff'
"
function! indent_guides#capture_highlight(group_name)
  redir => l:output
  exe "silent hi " . a:group_name
  redir END

  let l:output = substitute(l:output, "\n", "", "")
  return l:output
endfunction

"
" Returns a regex pattern for highlighting an indent level.
"
" Example: indent_guides#indent_highlight_pattern(' ', 1, 4)
" Returns: /^ *\%1v\zs *\%5v\ze/
"
" Example: indent_guides#indent_highlight_pattern('\s', 5, 2)
" Returns: /^\s*\%5v\zs\s*\%7v\ze/
"
" Example: indent_guides#indent_highlight_pattern('\t', 9, 2)
" Returns: /^\t*\%9v\zs\t*\%11v\ze/
"
function! indent_guides#indent_highlight_pattern(indent_pattern, column_start, indent_size)
  let l:pattern  = '^' . a:indent_pattern . '*\%' . a:column_start . 'v\zs'
  let l:pattern .= a:indent_pattern . '*\%' . (a:column_start + a:indent_size) . 'v'
  let l:pattern .= '\ze'
  return l:pattern
endfunction

"
" Detect if any of the buffer filetypes should be excluded.
"
function! indent_guides#exclude_filetype()
  " disable in terminals
  if &buftype == 'terminal'
    return 1
  endif

  for ft in split(&ft, '\.')
    if index(g:indent_guides_exclude_filetypes, ft) > -1
      return 1
    end
  endfor
  return 0
endfunction
