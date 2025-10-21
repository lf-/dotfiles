local M = {}

--- Defers parsing a query till later.
--- FIXME: there is probably an intended way to do this...
--- @param lang string
--- @param q string
function M.query_memo(lang, q)
    local compiled = nil
    return function()
        if not compiled then
            compiled = vim.treesitter.query.parse(lang, q)
        end
        return compiled
    end
end

return M
