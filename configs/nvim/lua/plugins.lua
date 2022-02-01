local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    -- https://github.com/wbthomason/packer.nvim/issues/750#issuecomment-1018881168
    vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

return require('packer').startup(function(use)
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

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/playground'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'RRethy/nvim-treesitter-textsubjects'
    use 'p00f/nvim-ts-rainbow'

    -- File types
    use 'LnL7/vim-nix'
    use 'alx741/yesod.vim'
    use 'ekalinin/Dockerfile.vim'
    use 'plasticboy/vim-markdown'
    use 'qnighy/lalrpop.vim'
    use 'editorconfig/editorconfig-vim'
    use 'tikhomirov/vim-glsl'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

