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

function M.setfiletypes(name, fts)
    M.augroup(name, function (autocmd)
        for _, tab in ipairs(fts) do
            local pat, ft = unpack(tab)
            autocmd(
                {'BufRead', 'BufNewFile'},
                {
                    pattern = pat,
                    callback = function ()
                        vim.opt_local.filetype = ft
                    end
                }
            )
        end
    end)
end

return M
