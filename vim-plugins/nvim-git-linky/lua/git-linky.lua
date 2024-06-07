local M = {}

-- The remote to link to
local OPT_REMOTE = 'linky.remote'
local OPT_REMOTE_TYPE = '.linky-type'

function M.make_range(range)
    local range_part
    if not range then
        range_part = ''
    else
        if range.line_start then
            range_part = '#L' .. tostring(range.line_start)
            if range.col_start then
                range_part = range_part .. 'C' .. tostring(range.col_start)
            end
        end
        if range.line_end and range.line_end ~= range.line_start and not range.col_end then
            range_part = range_part .. '-L' .. tostring(range.line_end)
            if range.col_end then
                range_part = range_part .. 'C' .. tostring(range.col_end)
            end
        end
    end
    return range_part
end

local REMOTE_TYPES = {
    github = {
        url_for = function(https_url, branch_or_ref, filename, range)
            local range_s = M.make_range(range)
            return ('%s/blob/%s/%s%s'):format(https_url, branch_or_ref, filename, range_s)
        end,
    },
    forgejo = {
        url_for = function(https_url, branch_or_ref, filename, range)
            -- unsupported by forgejo
            range.col_start = nil
            range.col_end = nil
            local range_s = M.make_range(range)

            return ('%s/src/%s/%s%s'):format(https_url, branch_or_ref, filename, range_s)
        end
    },
}

local function exec(cmd, ...)
    local proc = vim.system(cmd, ...)
    local completion = proc:wait()
    if completion.code ~= 0 then
        error(('Command failed with status %s: %s\nstderr:\n%s'):format(completion.code, vim.inspect(cmd), completion.stderr))
    end
    return vim.trim(completion.stdout)
end

function M.git_config(cwd, opt, default)
    local cmd = {'git', 'config', '--get'}
    if default then
        table.insert(cmd, '--default')
        table.insert(cmd, default)
    end
    table.insert(cmd, opt)

    return exec(cmd, {cwd = cwd})
end

function M.ssh2https_githublike(uri)
    local MATCHERS = {
        {'^ssh://%w+@([a-zA-Z0-9-.]+)/(.*)', replace = 'https://%1/%2'},
        {'^ssh://%w+@([a-zA-Z0-9-.]+):%d+/(.*)', replace = 'https://%1/%2'},
        {'^%w+@([a-zA-Z0-9-.]+):(.*)', replace = 'https://%1/%2'},
    }

    for _, m in ipairs(MATCHERS) do
        if string.match(uri, m[1]) then
            local new_uri = uri
            if m.replace then
                new_uri = string.gsub(uri, m[1], m.replace)
            end
            return new_uri
        end
    end

    return nil
end

function M.guess_remote_kind(uri)
    local as_https_may = M.ssh2https_githublike(uri)
    local MATCHERS = {
        {'^https://github%.com/.*', 'github'},
        {'^https://gitlab%.com/.*', 'github'},
        {'^https://codeberg%.org/.*', 'forgejo'},
        {'^https://git%.lix%.systems/.*', 'forgejo'},
    }

    -- Try scuffedly converting it to https and see if it matches then
    if as_https_may then
        uri = as_https_may
    end

    for _, m in ipairs(MATCHERS) do
        if string.match(uri, m[1]) then
            local new_uri = uri
            if m.replace then
                new_uri = string.gsub(uri, m[1], m.replace)
            end
            return { https_url = new_uri, kind = m[2] }
        end
    end
end

-- Resolves a remote to a remote structure with type and https_url
function M.resolve_remote(cwd)
    local remote_name = M.git_config(cwd, OPT_REMOTE, 'origin')

    local remote_kind = M.git_config(cwd, 'remote.' .. remote_name .. OPT_REMOTE_TYPE, '')
    local remote_url = M.get_remote_url(cwd, remote_name)

    -- We assume that the remote is already https, which is a bogus assumption.

    if remote_kind == '' then
        local remote_info = M.guess_remote_kind(remote_url)
        if not remote_info then
            error('Could not guess remote kind for ' .. remote_url)
        end
        remote_url = remote_info.https_url
        remote_kind = remote_info.kind
    end

    assert(remote_url:find('^https://'), 'Remote url ' .. remote_url .. ' must start with https')

    return {
        https_url = remote_url,
        kind = remote_kind,
    }
end

function M.get_remote_url(cwd, remote)
    return exec({'git', 'ls-remote', '--get-url', remote}, {cwd = cwd})
end

function M.make_ref_link(remote_info, ref, filename, range)
    local remote = REMOTE_TYPES[remote_info.kind]
    return remote.url_for(remote_info.https_url, ref, filename, range)
end

function M.do_linking(ref_type, range)
    local cwd = vim.fn.expand('%:p:h')
    local filename_abs = vim.fn.expand('%:p')

    local worktree_root = exec({'git', 'rev-parse', '--show-toplevel'}, { cwd = cwd })

    local filename_worktree_relative = (filename_abs:sub(1, #worktree_root) == worktree_root)
        and filename_abs:sub(#worktree_root + 2)
        or error(('somehow have a filename %s that does not start with the worktree root %s'):format(filename_abs, worktree_root))

    local remote = M.resolve_remote(cwd)
    local ref

    if ref_type == 'branch' then
        -- symbolic branch name
        ref = exec({'git', 'rev-parse', '--abbrev-ref', 'HEAD'}, { cwd = cwd })
    elseif ref_type == 'head' then
        -- version at HEAD
        ref = exec({'git', 'rev-parse', 'HEAD'}, { cwd = cwd })
    elseif ref_type == 'file' then
        -- latest commit to this file
        ref = exec({'git', 'rev-list', '-1', 'HEAD', '--', filename_abs}, { cwd = cwd })
    else
        error('Unknown ref type ' .. ref_type)
    end

    local link = M.make_ref_link(remote, ref, filename_worktree_relative, range)
    print('Copied: ', link)
    vim.fn.setreg('+', link)
end

function M.range_from_args(args)
    -- FIXME: can we grab columns? we would be very much abusing visual mode if
    -- we did that, since commands don't do columnwise ranges
    return { line_start = args.line1, line_end = args.line2 }
end

return M
