local Job = require('plenary.job')
local M = {}

local function err_log(...)
    vim.schedule_wrap(function(...)
        vim.api.nvim_err_writeln(table.concat({ ... }, ' '))
    end)(...)
end

--- @param cmd table<string>
--- @param on_result any completion callback
function M.buck2(cmd, on_result)
    local new_cmd = { '-v0', unpack(cmd) }
    return Job:new {
        command = "buck2",
        args = new_cmd,
        enable_recording = true,
        on_exit = function(j, return_val)
            if return_val ~= 0 then
                err_log('buck2 failed:\ncommand: buck2',
                    table.concat(new_cmd, ' '), '\noutput:',
                    table.concat(j:stderr_result(), '\n'))
                return
            end
            if on_result then on_result(j) end
        end,
    }
end

--- Runs a uquery command with the given query.
--- @param query string
function M.uquery(query)
    return M.buck2({ 'uquery', '--console', 'simple', '--', query }):sync(4000)
end

vim.api.nvim_create_user_command('BuckTarget', function()
        local fullpath = vim.fn.expand('%:p')

        local targets = M.uquery(('owner("%s")'):format(fullpath))

        print(table.concat(targets, '\n'))
    end,
    { nargs = 0 })

vim.api.nvim_create_user_command('BuckOpen', function()
        local fullpath = vim.fn.expand('%:p')

        local buckfiles = M.uquery(('buildfile(owner("%s"))'):format(fullpath))
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

return M
