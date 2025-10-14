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

vim.api.nvim_create_user_command('HsRename', function(args)
        local new_name = args.args

        local t = M.current_module_name()
        if not t then
            print('Failed to get module name')
            return
        end
        local full_filename = vim.fn.expand('%:p:r')
        local source_root = M.source_root(full_filename, t.name)
        if not source_root then
            print('Filename not right, not proceeding')
            return
        end
        local new_tail = new_name:gsub('%.', '/') .. '.hs'
        local new_filename = source_root .. new_tail

        local r1, c1, r2, c2 = unpack(t.range)
        vim.api.nvim_buf_set_text(vim.api.nvim_get_current_buf(), r1, c1, r2, c2,
            { new_name })

        vim.api.nvim_exec2('Move ' .. new_filename, { output = false })
    end,
    { nargs = 1, complete = M.rename_module_complete })

vim.api.nvim_create_user_command('HsTest', function()
        local t = M.current_module_name()
        if not t then
            print('Failed to get module name')
            return
        end
        local full_filename = vim.fn.expand('%:p:r')
        local source_root, tail = M.source_root(full_filename, t.name)
        if not source_root then
            print('Filename not right, not proceeding')
            return
        end

        -- FIXME: discover if it's tests/ instead of test/
        local new_name = (function()
            local head2 = M.remove_suffix(source_root, 'src/')
            if head2 then
                return head2 .. 'test/' .. tail .. 'Spec.hs'
            end

            head2 = M.remove_suffix(source_root, 'test/')
            if head2 then
                tail = tail:gsub('Spec$', '')
                return head2 .. 'src/' .. tail .. '.hs'
            end

            print("Not src/ or test/, dunno what to do")
            return nil
        end)()
        if not new_name then return end

        vim.api.nvim_exec2('edit ' .. new_name, { output = false })
    end,
    { nargs = 0 })

return M
