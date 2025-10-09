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

return M
