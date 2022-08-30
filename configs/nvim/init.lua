-- every query in here will use only the first file, thereby overriding the
-- query retrieved to ignore ones from plugins, since ~/.config/nvim is earlier
-- in the runtime path
local OVERRIDE_QUERIES = {
    haskell = {
        textobjects = true,
    }
}

-- monkeypatch get_query_files to allow for queries to be overridden.
-- this needs to be very early in initialization so that nvim-treesitter hits it

-- stop require'vim.treesitter' from returning a different module than vim
-- already loaded (!)
package.loaded['vim.treesitter'] = vim.treesitter
package.loaded['vim.treesitter.query'] = vim.treesitter.query
local _get_query_files = vim.treesitter.get_query_files

vim.treesitter.get_query_files = function(lang, query_name, is_included)
    local files = _get_query_files(lang, query_name, is_included)

    if OVERRIDE_QUERIES[lang] and OVERRIDE_QUERIES[lang][query_name] then
        files = vim.list_slice(files, 1, 1)
    end
    return files
end
-- lol lmao 😭
vim.treesitter.query.get_query_files = vim.treesitter.get_query_files

require('plugins')

vim.api.nvim_exec([[
runtime legacy_init.vim
    ]], false
)
