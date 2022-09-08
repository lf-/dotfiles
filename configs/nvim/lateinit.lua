local maps = require('maps')
local augroups = require('augroups')
require('commands')
require('gist')
local augroup = augroups.augroup
local opt = vim.opt
local bufopt = vim.opt_local
local g = vim.g

local nvim_eval = vim.api.nvim_eval
local nvim_exec = vim.api.nvim_exec
local nvim_call = vim.api.nvim_call_function

require 'nvim-treesitter.configs'.setup {
    ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
    highlight = {
        enable = true,
        -- breaks if handled by anything but the delicate
        -- touch of a lesbian
        disable = { "python" },
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
                ["ic"] = "@class.inner",
                ["ac"] = "@class.outer",
                ["if"] = "@function.inner",
                ["af"] = "@function.outer",
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
        -- FIXME: this seems to be too slow :(
        enable = false,
        extended_mode = true,
    },
    playground = {
        enable = true,
        disable = {},
        updatetime = 25,
        persist_queries = false,
        keybindings = {
            toggle_query_editor = 'o',
            toggle_hl_groups = 'i',
            toggle_injected_languages = 't',
            toggle_anonymous_nodes = 'a',
            toggle_language_display = 'I',
            focus_language = 'f',
            unfocus_language = 'F',
            update = 'R',
            goto_node = '<cr>',
            show_help = '?',
        },
    },
    query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
    },
}

require 'treesitter-context'.setup {
    max_lines = 3,
    min_window_height = 30,
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
-- Plugin configs
----------------------------------------------------------------------

g.instant_username = 'jade'

g.EditorConfig_exclude_patterns = { 'fugitive://.*' }
-- don't touch formatoptions when editorconfig specifies line length
g.EditorConfig_preserve_formatoptions = 1

g.windowswap_map_keys = 0

g.neovide_cursor_animation_length = 0.02
g.neovide_cursor_trail_length = 0

-- coc windows have blur on top of them sometimes, workaround
-- https://github.com/Kethku/neovide/issues/432
g.neovide_window_floating_blur = 0
g.neovide_window_floating_opacity = 0.8

-- disable built in yesod maps
g.yesod_disable_maps = 1

-- disable folding in vim markdown
g.vim_markdown_folding_disabled = 1
-- * blah<cr> will align with the 'b'
g.vim_markdown_new_list_item_indent = 2

-- attempt a perf improvement? see
-- https://github.com/vim-airline/vim-airline/issues/1026
g.airline_highlighting_cache = 1

-- our fonts support powerline symbols
g.airline_powerline_fonts = 1

if g.airline_symbols == nil then
    g.airline_symbols = vim.empty_dict()
end

-- truncate the branch name
g['airline#extensions#branch#displayed_head_limit'] = 15

-- remove annoying hamburger symbol
-- unicode symbols
g.airline_left_sep = '»'
g.airline_left_sep = '▶'
g.airline_right_sep = '«'
g.airline_right_sep = '◀'
g.airline_symbols.crypt = '🔒'
g.airline_symbols.linenr = '␤'
g.airline_symbols.linenr = '¶'
g.airline_symbols.maxlinenr = ''
g.airline_symbols.paste = 'ρ'
g.airline_symbols.paste = 'Þ'
g.airline_symbols.paste = '∥'
g.airline_symbols.spell = 'Ꞩ'
g.airline_symbols.notexists = '∄'
g.airline_symbols.whitespace = 'Ξ'
-- powerline symbols
g.airline_left_sep = ''
g.airline_left_alt_sep = ''
g.airline_right_sep = ''
g.airline_right_alt_sep = ''
g.airline_symbols.branch = ''
g.airline_symbols.readonly = ''
g.airline_symbols.linenr = ''

g.bookmark_save_per_working_dir = 1


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

-- Don't rebalance windows on change
opt.equalalways = false

-- Use only one space while joining lines ending with a period
opt.joinspaces = false

opt.list = true
opt.listchars = 'tab:  ,trail:•'

opt.guifont = 'Iosevka:h18'

opt.printoptions = 'paper:letter,syntax:y,number:y,left:3pc'
opt.printfont = 'Iosevka:h10'

-- Don't use the funny popup menu that is bad
opt.mousemodel = 'extend'

-- See https://github.com/neovim/neovim/issues/10223#issuecomment-703544303
if vim.env.WAYLAND_DISPLAY then
    -- clipboard on wayland with newline fix
    vim.g.clipboard = {
        name = "WL-Clipboard with ^M Trim",
        copy = {
            ["+"] = "wl-copy --foreground --trim-newline --type text/plain",
            ["*"] = "wl-copy --foreground --trim-newline --type text/plain --primary"
        },
        paste = {
            ["+"] = function()
                return { vim.fn.systemlist(
                    'wl-paste --no-newline --type "text/plain;charset=utf-8" 2>/dev/null | tr -d $"\r"',
                    "",
                    -- https://github.com/xiyaowong/coc-sumneko-lua/issues/26
                    ---@diagnostic disable-next-line: redundant-parameter
                    1
                ), 'v' }
            end,
            ["*"] = function()
                return { vim.fn.systemlist(
                    'wl-paste --no-newline --type "text/plain;charset=utf-8" --primary 2>/dev/null | tr -d $"\r"',
                    "",
                    -- https://github.com/xiyaowong/coc-sumneko-lua/issues/26
                    ---@diagnostic disable-next-line: redundant-parameter
                    1
                ), 'v' }
            end
        },
        cache_enabled = 1
    }
elseif vim.env.LC_GOOEYD_SOCK and vim.fn.executable('goo') then
    vim.g.clipboard = {
        name = "gooeyd",
        copy = {
            ["+"] = "goo copy",
            ["*"] = "goo copy --primary",
        },
        paste = {
            ["+"] = "goo paste",
            ["*"] = "goo paste --primary",
        }
    }
end

----------------------------------------------------------------------
-- Mappings
----------------------------------------------------------------------

_G.find_files_relative = function()
    require('telescope.builtin').find_files({
        cwd = require 'telescope.utils'.buffer_dir()
    })
end

-- Make all of these global so I can just add a mapping and copy it from the rc
-- file without restarting the editor
_G.nmap_silent = maps.nmap_silent
_G.noremap = maps.noremap
_G.nnoremap = maps.nnoremap
_G.nnoremap_silent = maps.nnoremap_silent
-- _G.vnoremap = maps.vnoremap
_G.inoremap = maps.inoremap
_G.inoremap_silent = maps.inoremap_silent
_G.nmap = maps.nmap
-- _G.vmap = maps.vmap
_G.omap = maps.omap
_G.xmap = maps.xmap
_G.xmap_silent = maps.xmap_silent

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
nmap("<Leader>iv", "<Cmd>:source ~/.config/nvim/lateinit.lua<cr>")
nnoremap("<Leader>t", "<Cmd>:vsp term://zsh<cr>")
nnoremap("<Leader>T", "<Cmd>:below split term://zsh<cr>")
nnoremap("<Leader>oiv", "<Cmd>:call OpenVimrc()<cr>")
nnoremap("<Leader>op", "<Cmd>:sp output:///rust-analyzer<cr>")
nnoremap("<Leader>oh", "<Cmd>:sp output:///languageserver.haskell<cr>")
nnoremap("<Leader>hl", "<Cmd>:call CocAction('toggleService', 'languageserver.haskell')<cr>")

-- telescope
nnoremap("<C-p>", "<Cmd>Telescope find_files<cr>")
nnoremap("<Leader><C-p>", "<Cmd>lua find_files_relative()<cr>")
nnoremap("<space>g", "<Cmd>Telescope live_grep<cr>")
nnoremap("<space>*", "<Cmd>Telescope grep_string<cr>")
nnoremap("<space>b", "<Cmd>Telescope buffers<cr>")

-- replace the word under the cursor with ,s
nnoremap("<Leader>s", [[:%s/\<<C-r><C-w>\>//g<Left><Left>]])

-- Use tab for trigger completion with characters ahead and navigate.
-- Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
--
inoremap('<TAB>',
	[[ coc#pum#visible() ? coc#pum#next(1): luaeval("check_back_space()") ? "\<Tab>" : coc#refresh() ]],
    { expr = true })
inoremap("<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], { expr = true })

local is_space = vim.regex([[\s]])
_G.check_back_space = function()
    local curs = vim.api.nvim_win_get_cursor(0)
    local row, col = curs[1], curs[2]
    local line = vim.api.nvim_get_current_line()
    -- 1-indexed arrays lol
    return not not (col == 0 or is_space:match_str(line:sub(col, col)))
end

-- Use <c-space> to trigger completion.
inoremap_silent("<c-space>", "coc#refresh()", { expr = true })

inoremap('<cr>', [[coc#pum#visible() && coc#pum#info()['index'] != -1 ? coc#pum#confirm() : "\<C-g>u\<CR>"]], {expr = true})

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

_G.show_documentation = function()
    if vim.tbl_contains({ 'vim', 'help' }, bufopt.filetype) then
        nvim_exec('h ' .. nvim_eval("expand('<cword')"), false)
    else
        nvim_call('CocAction', { 'doHover' })
    end
end

-- Use K to show documentation in preview window
nnoremap_silent("K", "<Cmd>lua show_documentation()<CR>")

-- Remap for rename current word
nmap("<leader>rn", "<Plug>(coc-rename)")
nnoremap("<leader>rs", ":CocRestart<cr>")

-- Remap for format selected region
-- this feature exists in ~no code formatters so just do global format
-- xmap("<leader>f", "<Plug>(coc-format-selected)")
-- nmap("<leader>f", "<Plug>(coc-format-selected)")
nmap('<leader>f', '<Plug>(coc-format)')

-- Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap("<leader>a", "<Plug>(coc-codeaction-selected)")
nmap("<leader>a", "<Plug>(coc-codeaction-selected)")

-- Remap for do codeAction of current line
nmap("<leader>ac", "<Plug>(coc-codeaction)")
-- Fix autofix problem of current line
nmap("<leader>qf", "<Plug>(coc-fix-current)")

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

----------------------------------------------------------------------
-- autocmd sadness land
----------------------------------------------------------------------

_G.pp = function(v)
    print(vim.inspect(v))
end

vim.opt.title = true
augroup('titling', function (autocmd)
    autocmd('BufEnter', {
        callback = function()
            local hostname_part = ''
            if vim.env.SSH_CONNECTION then
                hostname_part = '@' .. vim.fn.hostname()
            end
            local dirname = vim.fn.fnamemodify(vim.fn.getcwd(), ':t')

            -- wrong types: https://github.com/xiyaowong/coc-sumneko-lua/issues/25
            ---@diagnostic disable-next-line:missing-parameter
            local filename = vim.fn.expand('%:t')

            bufopt.titlestring = ('%s :: %s - nvim%s'):format(dirname, filename, hostname_part)
        end
    })
end)

augroup('reload queries on query save', function(autocmd) --https://github.com/nvim-treesitter/nvim-treesitter/issues/3304
    autocmd(
        'BufWrite',
        {
            pattern = '*.scm',
            callback = function ()
                require'nvim-treesitter.query'.invalidate_query_cache()
            end
        }
    )
end)

augroup('formatoptions', function(autocmd)
    autocmd(
        'FileType',
        {
            callback = function()
                if vim.o.filetype == 'gitcommit' then
                    return
                end
                if vim.o.filetype == 'text' or vim.o.filetype == 'markdown' then
                    bufopt.textwidth = 79
                    return
                end

                bufopt.formatoptions = 'roqnlj'

                -- the default plugin for this sets tw to 100 or something. I don't use the
                -- formatoption to format while typing so this only matters for comments
                -- where 79 is better.
                if vim.o.filetype == 'rust' then
                    bufopt.textwidth = 79
                    ---@diagnostic disable-next-line: undefined-field
                    bufopt.formatoptions:append('c')
                end
            end
        }
    )
    autocmd(
        'FileType',
        {
            pattern = 'gitcommit',
            callback = function ()
                bufopt.spell = true
            end
        }
    )
end)

augroups.setfiletypes('filetypedetection', {
    -- shakespearean templates ≈ their respective languages, and I'd rather have
    -- shitty highlighting than no highlighting
    {'*.julius', 'javascript'},
    {'*.cassius', 'css'},
    {'*.hamlet', 'html'},

    -- git revise -i has the same syntax as git rebase, to a first degree
    {'git-revise-todo', 'gitrebase'},

    -- coc-settings is actually json+comments
    {'coc-settings.json', 'jsonc'},
})

vim.api.nvim_exec('runtime lateinit-site.lua', false)
