
vim.api.nvim_create_user_command('BuckTarget', function()
        local buck2 = require('jade.buck2')
        local fullpath = vim.fn.expand('%:p')

        local targets = buck2.uquery(('owner("%s")'):format(fullpath))

        print(table.concat(targets, '\n'))
    end,
    { nargs = 0 })

vim.api.nvim_create_user_command('BuckOpen', function()
        local buck2 = require('jade.buck2')
        local fullpath = vim.fn.expand('%:p')

        local buckfiles = buck2.uquery(('buildfile(owner("%s"))'):format(fullpath))
        if #buckfiles > 1 then
            for _, f in ipairs(buckfiles) do
                vim.api.nvim_exec2('split ' .. f, { output = false })
            end
        elseif #buckfiles == 1 then
            vim.api.nvim_exec2('edit ' .. buckfiles[1], { output = false })
        end
    end,
    { nargs = 0 })

-- Telescope selector on targets in the file.
vim.api.nvim_create_user_command('BuckOutline', function()
        require('telescope.builtin').treesitter({
            symbols = {'target'},
        })
    end,
    { nargs = 0 })

