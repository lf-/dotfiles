local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local packer_bootstrap

-- variadic
---@diagnostic disable-next-line: missing-parameter
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    -- https://github.com/wbthomason/packer.nvim/issues/750#issuecomment-1018881168
    vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

return require('packer').startup(function(use)
    local function useLocal(name, ...)
        local tableInput = name
        if type(tableInput) == 'table' then
            name = tableInput[1]
        end
        local basename = name:match('[^/]/([^/]+)')
        local S_IFDIR = 0x4000
        -- bogus type definitions
        ---@diagnostic disable-next-line: missing-parameter
        local coname = vim.fn.expand('$HOME') .. '/co/' .. basename
        local stat = vim.loop.fs_stat(coname)
        if stat and bit.band(stat.mode, S_IFDIR) ~= 0 then
            if type(tableInput) == 'table' then
                tableInput[1] = coname
                return use(tableInput)
            else
                return use(coname, ...)
            end
        end

        -- passthru it, it doesn't matter if it's a table
        return use(name, ...)
    end
    use 'wbthomason/packer.nvim'

    use 'tomtom/tcomment_vim'
    use 'tpope/vim-surround'
    use 'godlygeek/tabular'

    use 'jbyuki/instant.nvim'

    use 'tpope/vim-dispatch'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-eunuch'

    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'

    -- completion
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'mattn/emmet-vim'

    -- UI
    use 'gcmt/taboo.vim'
    use 'romainl/flattened'
    use 'NLKNguyen/papercolor-theme'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'wesQ3/vim-windowswap'
    use 'AndrewRadev/undoquit.vim'
    use 'MattesGroeger/vim-bookmarks'

    use {'nvim-treesitter/nvim-treesitter', branch = 'v0.8.0'}
    use 'nvim-treesitter/playground'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'RRethy/nvim-treesitter-textsubjects'
    use {'lf-/nvim-treesitter-context', branch = 'min_window_height' }
    useLocal 'p00f/nvim-ts-rainbow'

    -- File types
    use 'LnL7/vim-nix'
    use 'alx741/yesod.vim'
    use 'ekalinin/Dockerfile.vim'
    use 'plasticboy/vim-markdown'
    use 'qnighy/lalrpop.vim'
    use 'editorconfig/editorconfig-vim'
    use 'tikhomirov/vim-glsl'
    use 'bfrg/vim-jq'
    use 'vmchale/dhall-vim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

