local Job = require('plenary.job')

function do_gist(args)
    local lines = vim.api.nvim_buf_get_lines(0, args.line1 - 1, args.line2 - 1, true)
    local text = (table.concat(lines, '\n'))
    local filename = vim.fn.expand('%')

    local job = Job:new {
        command = 'gh',
        args = {'gist', 'create', '-f', filename},
        on_exit = function (j, return_val)
            if return_val ~= 0 then
                print('gist failed')
                return
            end
            local result = j:result()[1]

            -- TODO: this doesnt work for some weird unknown reason
            vim.schedule(function ()
                print('copied', result)
                vim.fn.setreg('+', result)
            end)
        end
    }
    job:start()
    job.stdin:write(text)
    job.stdin:close()
end

vim.api.nvim_create_user_command('Gist', (function (args)
    do_gist(args)
end), {
    desc = "Gists the current file privately with gh gist",
    range = '%'
})
