-- Ideas and some implementation strategy taken from hex.nvim:
-- https://github.com/RaafatTurki/hex.nvim/blob/master/lua/hex.lua
local M = {}
local util = require('nix-drv.utils')

local augroup = vim.api.nvim_create_augroup('nix_drv', { clear = true })

M.cfg = {
    dump_cmd = 'nix derivation show --quiet --quiet --quiet',
    is_drv_file = function ()
        local ext = vim.fn.expand('%:e')
        return ext == 'drv'
    end,
}

M.dump = function ()
    if vim.b.nix_drv then
        util.dump(M.cfg.dump_cmd)
        vim.bo.filetype = 'json'
        vim.b.nix_drv = false
    else
        vim.notify('already dumped drv', vim.log.levels.WARN)
    end
end

local function setup_autocmds()
    vim.api.nvim_create_autocmd({ 'BufReadPost' }, {
        group = augroup_hex_editor,
        callback = function()
            if M.cfg.is_drv_file() then
                vim.b.nix_drv = true
            end
            if vim.b.nix_drv then
                M.dump()
            end
        end
    })
end

-- Disables for a buffer
M.buf_disable = function ()
    vim.b.nix_drv = false
    vim.cmd ':edit'
end

M.setup = function (args)
    M.cfg = vim.tbl_deep_extend('force', M.cfg, args or {})

    local dump_program = vim.fn.split(M.cfg.dump_cmd)[1]
    if not vim.fn.executable(dump_program) then
        return
    end

    vim.api.nvim_create_user_command('NixDrvDump', M.dump, {})
    vim.api.nvim_create_user_command('NixDrvDisable', M.buf_disable, {})
    setup_autocmds()
end

return M
