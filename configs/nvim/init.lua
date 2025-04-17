-- every query in here will use only the first file, thereby overriding the
-- query retrieved to ignore ones from plugins, since ~/.config/nvim is earlier
--
-- in the runtime path
-- local OVERRIDE_QUERIES = {
--     haskell = {
--         textobjects = true,
--     }
-- }

-- XXX: Crimes removed because of nvim 0.9 or 0.8 or something adding this
-- feature itself
-- monkeypatch get_query_files to allow for queries to be overridden.
-- this needs to be very early in initialization so that nvim-treesitter hits it

-- stop require'vim.treesitter' from returning a different module than vim
-- already loaded (!)
-- package.loaded['vim.treesitter'] = vim.treesitter
-- package.loaded['vim.treesitter.query'] = vim.treesitter.query
-- local _get_query_files = vim.treesitter.get_query_files
--
-- vim.treesitter.get_query_files = function(lang, query_name, is_included)
--     local files = _get_query_files(lang, query_name, is_included)
--
--     if OVERRIDE_QUERIES[lang] and OVERRIDE_QUERIES[lang][query_name] then
--         files = vim.list_slice(files, 1, 1)
--     end
--     return files
-- end
-- -- lol lmao 😭
-- vim.treesitter.query.get_query_files = vim.treesitter.get_query_files

-- FIXME: the termguicolors setting probably should not be done this way and
-- instead autodetect but like, whatever, I don't use bad terminals.
-- Workaround for https://github.com/neoclide/coc.nvim/issues/5297
vim.opt.termguicolors = true

require("config.lazy")

vim.api.nvim_exec([[
runtime legacy_init.vim
    ]], false
)
