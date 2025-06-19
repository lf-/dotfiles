local M = {}

-- FIXME(jade): does this need to be written this way? Is there a way to
-- temporarily disable undo?
-- This snippet is documented in clear-undo in the vim manual
function M.wipe_undo_history()
    local undolevels = vim.bo.undolevels
    vim.bo.undolevels = -1
    vim.cmd [[exe "normal a \<BS>\<Esc>"]]
    vim.bo.undolevels = undolevels
end

function M.dump(cmd)
    -- FIXME(jade): This is *wrong* shell quoting
    vim.cmd("%! " .. cmd .. ' "' .. vim.fn.expand('%:p') .. '"')
    M.wipe_undo_history()
    vim.bo.mod = false
    vim.bo.readonly = true
end

return M
