local function local_plugin(name, ...)
    -- XXX: this is a holdover from packer using the nvim pack functionality
    -- which lazy seems to not use. idk man.
    return { dir = vim.fn.stdpath('config') .. '/pack/plugins/start/' .. name, ... }
end

return {
    local_plugin('flattened'),
    local_plugin('nvim-git-linky'),
    local_plugin('vim-indent-guides'),
    local_plugin('nix-drv.nvim'),
    local_plugin('buck2.nvim'),
    local_plugin('haskell.nvim'),

    'tomtom/tcomment_vim',
    'tpope/vim-surround',
    'godlygeek/tabular',
    -- Better functionality for the % motion
    -- 'andymass/vim-matchup',

    'jbyuki/instant.nvim',

    'tpope/vim-dispatch',
    'tpope/vim-fugitive',
    'tpope/vim-eunuch',

    { 'nvim-lua/plenary.nvim', lazy = true },
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-fzy-native.nvim',

    -- completion
    { 'neoclide/coc.nvim',     branch = 'release' },
    'mattn/emmet-vim',

    -- UI
    'gcmt/taboo.vim',
    'NLKNguyen/papercolor-theme',
    'vim-airline/vim-airline',
    'vim-airline/vim-airline-themes',
    'wesQ3/vim-windowswap',
    'AndrewRadev/undoquit.vim',
    'MattesGroeger/vim-bookmarks',

    -- GitHub integration
    'pwntester/octo.nvim',

    'nvim-treesitter/nvim-treesitter',
    'nvim-treesitter/nvim-treesitter-textobjects',
    'RRethy/nvim-treesitter-textsubjects',
    'nvim-treesitter/nvim-treesitter-context',
    'p00f/nvim-ts-rainbow',
    -- Shows which key you can press next
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            plugins = {
                -- broken due to OSC52 safety over ssh
                registers = false,
            },
        },
    },

    -- debug adapter protocol
    'mfussenegger/nvim-dap',

    -- File types
    'LnL7/vim-nix',
    'alx741/yesod.vim',
    'ekalinin/Dockerfile.vim',
    'plasticboy/vim-markdown',
    'qnighy/lalrpop.vim',
    'editorconfig/editorconfig-vim',
    'tikhomirov/vim-glsl',
    'bfrg/vim-jq',
    'vmchale/dhall-vim',
}
