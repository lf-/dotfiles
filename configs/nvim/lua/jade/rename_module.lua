local M = {}

local QUERY = [[(header module: (module) @mod)]]
local QUERY_COMPILED = nil

function M.query()
    if not QUERY_COMPILED then
        QUERY_COMPILED = vim.treesitter.query.parse('haskell', QUERY)
    end
    return QUERY_COMPILED
end

function M.current_module_name()
    if vim.opt_local.filetype:get() ~= 'haskell' then return nil end

    local q = M.query()
    local parser = vim.treesitter.get_parser(vim.api.nvim_get_current_buf(), 'haskell')
    if not parser then return nil end
    local tree = parser:parse()[1]
    if not tree then return nil end
    for _, node, _ in q:iter_captures(tree:root(), 0) do
        local text = vim.treesitter.get_node_text(node, vim.api.nvim_get_current_buf())
        return { name = text, range = { node:range(false) } }
    end
end

function M.rename_module_complete(_, _)
    local t = M.current_module_name()
    if not t then return nil end
    return { t.name }
end

vim.api.nvim_create_user_command('MRename', function(args)
        local new_name = args.args

        local t = M.current_module_name()
        if not t then
            vim.print('Failed to get module name')
            return
        end
        local full_filename = vim.fn.expand('%:p:r')
        local tail = t.name:gsub('%.', '/')
        if not vim.endswith(full_filename, tail) then
            vim.print('Filename not right, not proceeding')
            return
        end
        local new_tail = new_name:gsub('%.', '/') .. '.hs'
        local new_filename = full_filename:sub(1, -(#tail) - 1) .. new_tail

        local r1, c1, r2, c2 = unpack(t.range)
        vim.api.nvim_buf_set_text(vim.api.nvim_get_current_buf(), r1, c1, r2, c2, { new_name })

        vim.api.nvim_exec2('Move ' .. new_filename, { output = false })
    end,
    { nargs = 1, complete = M.rename_module_complete })

return M
