local make = vim.api.nvim_set_keymap
function make_map(mode, def_opts)
    return function (from, to, opts)
        local newopts = vim.tbl_extend('force', def_opts or {}, opts or {})
        vim.api.nvim_set_keymap(mode, from, to, newopts)
    end
end

return {
    noremap         = make_map('',  {noremap = true}),
    nnoremap        = make_map('n', {noremap = true}),
    nnoremap_silent = make_map('n', {noremap = true, silent = true}),
    vnoremap        = make_map('v', {noremap = true}),
    inoremap        = make_map('i', {noremap = true}),
    inoremap_silent = make_map('i', {noremap = true, silent = true}),
    nmap            = make_map('n'),
    nmap_silent     = make_map('n', {silent = true}),
    vmap            = make_map('v'),
    omap            = make_map('o'),
    xmap            = make_map('x'),
    xmap_silent     = make_map('x', {silent = true}),
}
