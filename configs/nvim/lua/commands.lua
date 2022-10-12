-- make it not do anything if there is no support
local nvim_new_command = vim.api.nvim_create_user_command or function() end
local uv = vim.loop
local Path = require('plenary.path')
local ts_configs = require('nvim-treesitter.configs')

local function make_telescope_command(name, builtin_name, extra_args)
    nvim_new_command(name, function(args)
        local telescope_args = vim.tbl_extend('force', {
            cwd = args.args,
        }, extra_args or {});
        (require 'telescope.builtin')[builtin_name](telescope_args)
    end, {
        nargs = '*',
        complete = 'file',
    })
end

make_telescope_command('FindFiles', 'find_files')
make_telescope_command('LiveGrep', 'live_grep')
-- find-cabal
make_telescope_command('FC', 'find_files', {
    find_command = { "fd", "--type", "f", "--color", "never", "-e", "cabal" }
})

nvim_new_command('PrintPDF', function(args)
    local p = tostring(Path:new(vim.fn.stdpath('cache')) / 'printpdf.ps')
    local p_esc = vim.fn.fnameescape(p)

    -- switch to a light theme
    local prev_col = vim.g.colors_name
    local prev_bg = vim.opt.background
    vim.cmd('colorscheme PaperColor')
    vim.opt.background = 'light'

    local bufnr = vim.api.nvim_get_current_buf()
    require('nvim-treesitter.configs').detach_module('highlight', bufnr)

    -- do the hardcopy
    vim.cmd('hardcopy > ' .. p_esc)
    uv.spawn('ps2pdf', {
        args = { p, args.args },
    }, function()
        -- delete our temp file once we're done
        uv.fs_unlink(p)
    end)

    -- revert
    vim.cmd('colorscheme ' .. prev_col)
    vim.opt.background = prev_bg
    require('nvim-treesitter.configs').attach_module(
        'highlight',
        bufnr,
        require('nvim-treesitter.parsers').get_buf_lang(bufnr)
    )
end,
    { nargs = 1, complete = 'file' })


nvim_new_command('CopyPath', function (args)
    local fullpath = vim.fn.expand('%:p')
    vim.fn.setreg('+', fullpath)
end,
    { nargs = 0 })

nvim_new_command('TSClearParsers', function (args)
    local directory = ts_configs.get_parser_install_dir()
    if directory ~= nil then
        print('deleted ', directory);
        (Path:new(directory)):rm({recursive = true})
    end
end,
    { nargs = 0 })
