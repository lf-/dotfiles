local M = {}

function M.augroup(name, cb)
    local id = vim.api.nvim_create_augroup(name, {})
    local function do_create(event, opts)
        local newopts = vim.deepcopy(opts)
        newopts.group = id
        vim.api.nvim_create_autocmd(event, newopts)
    end

    cb(do_create)
end

return M
