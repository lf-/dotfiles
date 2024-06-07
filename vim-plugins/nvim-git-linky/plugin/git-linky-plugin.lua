local function make_command(name, kind)
    vim.api.nvim_create_user_command(
        name, function (args)
            local git_linky = require('git-linky')
            git_linky.do_linking(kind, git_linky.range_from_args(args))
        end, {
            nargs = 0,
            range = true,
            desc = ("require('git-linky').do_linking(%s, require('git-linky').range_from_args(args))"):format(vim.inspect(kind)),
        }
    )
end

make_command('GitCommitLink', 'file')
make_command('GitCurrentBranchLink', 'branch')
make_command('GitCurrentCommitLink', 'head')

