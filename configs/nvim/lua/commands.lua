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

nvim_new_command('CopyPath', function(args)
        local fullpath = vim.fn.expand('%:p')
        vim.fn.setreg('+', fullpath)
    end,
    { nargs = 0 })

nvim_new_command('TSClearParsers', function(args)
        local directory = ts_configs.get_parser_install_dir()
        if directory ~= nil then
            print('deleted ', directory);
            (Path:new(directory)):rm({ recursive = true })
        end
    end,
    { nargs = 0 })

nvim_new_command('Light', function(args)
        vim.opt.background = 'light'
        vim.api.nvim_exec('colorscheme PaperColor', false)
    end,
    { nargs = 0 })
