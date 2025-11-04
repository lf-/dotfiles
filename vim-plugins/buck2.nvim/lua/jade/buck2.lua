local Job = require("plenary.job")
local M = {}

--- @param cmd table<string>
--- @param on_result? fun(job: Job) completion callback
--- @return Job
function M.buck2(cmd, on_result)
	local new_cmd = { "-v0", unpack(cmd) }
	return Job:new({
		command = "buck2",
		args = new_cmd,
		enable_recording = true,
		on_exit = function(j, return_val)
			if return_val ~= 0 then
				vim.notify(
					"buck2 failed:\ncommand: buck2 "
						.. table.concat(new_cmd, " ")
						.. "\noutput:"
						.. table.concat(j:stderr_result(), "\n"),
					vim.log.levels.ERROR
				)
				return
			end
			if on_result then
				on_result(j)
			end
		end,
	})
end

--- Runs a uquery command with the given query.
--- @param query string
--- @return string[], number
function M.uquery(query)
	-- Note: We pass `enable_recording = true`, so we're always going to get
	-- output here instead of `nil`.
	return M.buck2({ "uquery", "--console", "simple", "--", query }):sync(4000)
end

return M
