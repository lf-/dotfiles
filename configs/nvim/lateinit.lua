local maps = require('maps')
local opt = vim.opt
local bufopt = vim.opt_local

local nvim_eval = vim.api.nvim_eval
local nvim_exec = vim.api.nvim_exec
local nvim_call = vim.api.nvim_call_function

require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
    highlight = {
        enable = true,
        -- breaks if handled by anything but the delicate
        -- touch of a lesbian
        disable = { "python", "html" },
        -- this needs to be here because the autoindent plugin is fucked on js
        -- without having vim highlighting on (typing /*<Enter> causes a spurious
        -- extra indent).
        additional_vim_regex_highlighting = { "javascript" },
    },
    indent = {
        enable = false, -- it's not good enough. worse than default in python,
                        -- rust, cpp
        disable = { "rust", "cpp" },
    },
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["ia"] = "@parameter.inner",
                ["aa"] = "@parameter.outer",
            },
        },
    },
    textsubjects = {
        enable = true,
        keymaps = {
            ['.'] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
        },
    },
    rainbow = {
        enable = true,
        extended_mode = true,
    },
}

require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ["<C-Down>"] = require('telescope.actions').cycle_history_next,
                ["<C-Up>"] = require('telescope.actions').cycle_history_prev,
            },
        }
    },
}

----------------------------------------------------------------------
-- Options
----------------------------------------------------------------------

opt.modelines = 0
opt.history = 1000

-- completion stuff
-- https://github.com/neoclide/coc.nvim/issues/649
opt.backup = false
opt.writebackup = false

-- more space for the command window on bottom of screen
opt.cmdheight = 2

-- aggressively write swap files (maybe used for diagnostics?)
opt.updatetime = 300

-- don't give |ins-completion-menu| messages.
opt.shortmess:append('c')

-- add extra column on left for IDE stuff
opt.signcolumn = 'yes'

-- deliberately disable smartindent since it somehow got turned on in python
opt.autoindent = true
opt.smartindent = false

opt.showmode = true
opt.showcmd = true
opt.hidden = true
opt.wildmenu = true
opt.wildmode = 'list:longest'
opt.visualbell = true
opt.ruler = true
opt.backspace = 'indent,eol,start'
opt.laststatus = 2
opt.undofile = true

-- this was needed for fish but is now probs just a perf improvement
opt.shell = 'bash'

-- Movement
opt.scrolloff = 7
opt.showmatch = true
opt.mouse = 'a'

-- Search
opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.lazyredraw = false

-- Visual stuff
opt.cursorline = true
opt.number = true

-- Use only one space while joining lines ending with a period
opt.joinspaces = false

----------------------------------------------------------------------
-- Mappings
----------------------------------------------------------------------

_G.find_files_relative = function ()
  require('telescope.builtin').find_files({
    search_dirs = {nvim_eval("expand('%:h')")}
  })
end

local nmap_silent = maps.nmap_silent
local noremap = maps.noremap
local nnoremap = maps.nnoremap
local nnoremap_silent = maps.nnoremap_silent
local vnoremap = maps.vnoremap
local inoremap = maps.inoremap
local inoremap_silent = maps.inoremap_silent
local nmap = maps.nmap
local vmap = maps.vmap
local omap = maps.omap
local xmap = maps.xmap
local xmap_silent = maps.xmap_silent

nnoremap(";", ":")

nnoremap("<C-w>y", "<Cmd>call WindowSwap#MarkWindowSwap()<cr>")
nnoremap("<C-w>d", "<Cmd>call DeleteWindow()<cr>")
nnoremap("<C-w>p", "<Cmd>call WindowSwap#DoWindowSwap()<cr>")

-- reflow a paragraph
nnoremap("g=", "mpgqap'p")

-- Leader commands
vim.g.mapleader = ","
noremap("<M-n>", "<Cmd>:tabn<cr>")
noremap("<M-p>", "<Cmd>:tabp<cr>")
nmap("<Leader>iv", "<Cmd>:source ~/.config/nvim/init.vim<cr>")
nnoremap("<Leader>t", "<Cmd>:vsp term://zsh<cr>")
nnoremap("<Leader>oiv", "<Cmd>:call OpenVimrc()<cr>")
nnoremap("<Leader>op", "<Cmd>:sp output:///rust-analyzer<cr>")
nnoremap("<Leader>oh", "<Cmd>:sp output:///languageserver.haskell<cr>")

-- telescope
nnoremap("<C-p>", "<Cmd>Telescope find_files<cr>")
nnoremap("<Leader><C-p>", "<Cmd>lua find_files_relative()<cr>")
nnoremap("<space>g", "<Cmd>Telescope live_grep<cr>")

-- replace the word under the cursor with ,s
nnoremap("<Leader>s", [[:%s/\<<C-r><C-w>\>//g<Left><Left>]])

-- Use tab for trigger completion with characters ahead and navigate.
-- Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap_silent("<TAB>",
    [[pumvisible() ? "\<C-n>" : luaeval("check_back_space()") ? "\<TAB>" : coc#refresh()]],
    {expr = true})
inoremap("<S-TAB>", [[pumvisible() ? "\<C-p>" : "\<C-h>"]], {expr = true})

local is_space = vim.regex([[\s]])
_G.check_back_space = function ()
    local curs = vim.api.nvim_win_get_cursor(0)
    local row, col = curs[1], curs[2]
    local line = vim.api.nvim_get_current_line()
    -- 1-indexed arrays lol
    return not not (col == 0 or is_space:match_str(line:sub(col, col)))
end

-- Use <c-space> to trigger completion.
inoremap_silent("<c-space>", "coc#refresh()", {expr = true})

-- Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
-- Coc only does snippet and additional edit on confirm.
inoremap("<cr>", [[pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"]], {expr = true})
-- Or use `complete_info` if your vim support it, like:
-- inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

-- Use `[g` and `]g` to navigate diagnostics
nmap_silent("[g", "<Plug>(coc-diagnostic-prev)")
nmap_silent("]g", "<Plug>(coc-diagnostic-next)")

-- Remap keys for gotos
nmap_silent("gd", "<Plug>(coc-definition)")
nmap_silent("gy", "<Plug>(coc-type-definition)")
nmap_silent("gY", "<Plug>(coc-declaration)")
nmap_silent("gD", "<Plug>(coc-implementation)")
nmap_silent("gr", "<Plug>(coc-references)")
-- open the given thing in a split
nmap_silent("<leader>gd", "<Cmd>call CocActionAsync('jumpDefinition', 'sp')<cr>")
nmap_silent("<leader>gy", "<Cmd>call CocActionAsync('jumpTypeDefinition', 'sp')<cr>")
nmap_silent("<leader>gY", "<Cmd>call CocActionAsync('jumpDeclaration', 'sp')<cr>")
nmap_silent("<leader>gD", "<Cmd>call CocActionAsync('jumpImplementation', 'sp')<cr>")
nmap_silent("<leader>gr", "<Cmd>call CocActionAsync('jumpReferences', 'sp')<cr>")

_G.show_documentation = function ()
    if vim.tbl_contains({'vim', 'help'}, bufopt.filetype) then
        nvim_exec('h ' .. nvim_eval("expand('<cword')"))
    else
        nvim_call('CocAction', {'doHover'})
    end
end

-- Use K to show documentation in preview window
nnoremap_silent("K", "<Cmd>lua show_documentation()<CR>")

-- Remap for rename current word
nmap("<leader>rn", "<Plug>(coc-rename)")
nnoremap("<leader>rs", ":CocRestart<cr>")

-- Remap for format selected region
xmap("<leader>f", "<Plug>(coc-format-selected)")
nmap("<leader>f", "<Plug>(coc-format-selected)")

-- Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap("<leader>a", "<Plug>(coc-codeaction-selected)")
nmap("<leader>a", "<Plug>(coc-codeaction-selected)")

-- Remap for do codeAction of current line
nmap("<leader>ac", "<Plug>(coc-codeaction)")
-- Fix autofix problem of current line
nmap("<leader>qf", "<Plug>(coc-fix-current)")

-- Create mappings for function text object, requires document symbols feature of languageserver.
xmap("if", "<Plug>(coc-funcobj-i)")
xmap("af", "<Plug>(coc-funcobj-a)")
omap("if", "<Plug>(coc-funcobj-i)")
omap("af", "<Plug>(coc-funcobj-a)")

-- Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap_silent("<C-d>", "<Plug>(coc-range-select)")
xmap_silent("<C-d>", "<Plug>(coc-range-select)")

-- Using CocList
-- Show all diagnostics
nnoremap_silent("<space>a", ":<C-u>CocList diagnostics<cr>")
-- Manage extensions
nnoremap_silent("<space>e", ":<C-u>CocList extensions<cr>")
-- Show commands
nnoremap_silent("<space>c", ":<C-u>CocList commands<cr>")
-- Find symbol of current document
nnoremap_silent("<space>o", ":<C-u>CocList outline<cr>")
-- Search workspace symbols
nnoremap_silent("<space>s", ":<C-u>CocList -I symbols<cr>")
-- Do default action for next item.
nnoremap_silent("<space>j", ":<C-u>CocNext<CR>")
-- Do default action for previous item.
nnoremap_silent("<space>k", ":<C-u>CocPrev<CR>")
-- Resume latest coc list
nnoremap_silent("<space>p", ":<C-u>CocListResume<CR>")
nmap_silent("<space>l", "<Plug>(coc-codelens-action)")

-- remove highlights with space+h
nnoremap_silent("<space>h", ":<C-u>nohlsearch<CR>")

nnoremap_silent("<space>b", "<Cmd>CtrlPBuffer<CR>")

----------------------------------------------------------------------
-- autocmd sadness land
----------------------------------------------------------------------

_G.set_format_options = function()
    if vim.o.filetype == 'gitcommit' then
        return
    end
    if vim.o.filetype == 'text' then
        bufopt.textwidth = 79
        return
    end
    bufopt.formatoptions = 'roqnlj'
end
