local M = {}
local jade_ts = require('jade.treesitter')

M.query = jade_ts.query_memo('haskell', [[
(header module: (module) @mod)
]])

function M.current_module_name()
    if vim.opt_local.filetype:get() ~= 'haskell' then return nil end

    local q = M.query()
    local parser = vim.treesitter.get_parser(vim.api.nvim_get_current_buf(),
        'haskell')
    if not parser then return nil end
    local tree = parser:parse()[1]
    if not tree then return nil end
    for _, node, _ in q:iter_captures(tree:root(), 0) do
        local text = vim.treesitter.get_node_text(node,
            vim.api.nvim_get_current_buf())
        return { name = text, range = { node:range(false) } }
    end
end

---@param module_name string
function M.module_filename(module_name)
    return module_name:gsub('%.', '/')
end

---@param s string
---@param suffix string
function M.remove_suffix(s, suffix)
    if vim.endswith(s, suffix) then
        return s:sub(1, -(#suffix) - 1)
    else
        return nil
    end
end

--- Finds the root of the current Haskell package's src/test directory.
--- @param filename_noext string
--- @param module_name string
function M.source_root(filename_noext, module_name)
    local tail = module_name:gsub('%.', '/')
    return M.remove_suffix(filename_noext, tail), tail
end

function M.rename_module_complete(_, _)
    local t = M.current_module_name()
    if not t then return nil end
    return { t.name }
end


return M
