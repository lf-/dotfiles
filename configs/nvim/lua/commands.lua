-- make it not do anything if there is no support
local nvim_new_command = vim.api.nvim_create_user_command or function() end
local uv = vim.loop
local Path = require('plenary.path')

local function make_telescope_command(name, builtin_name)
    nvim_new_command(name, function(args)
        (require 'telescope.builtin')[builtin_name]({
            cwd = args.args,
        })
    end, {
        nargs = 1,
        complete = 'file',
    })
end

make_telescope_command('FindFiles', 'find_files')
make_telescope_command('LiveGrep', 'live_grep')

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
