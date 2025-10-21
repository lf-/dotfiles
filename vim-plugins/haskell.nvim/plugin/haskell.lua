vim.api.nvim_create_user_command('HsRename', function(args)
        local hs = require('jade.haskell')
        local new_name = args.args

        local t = hs.current_module_name()
        if not t then
            print('Failed to get module name')
            return
        end
        local full_filename = vim.fn.expand('%:p:r')
        local source_root = hs.source_root(full_filename, t.name)
        if not source_root then
            print('Filename not right, not proceeding')
            return
        end
        local new_tail = new_name:gsub('%.', '/') .. '.hs'
        local new_filename = source_root .. new_tail

        local r1, c1, r2, c2 = unpack(t.range)
        vim.api.nvim_buf_set_text(vim.api.nvim_get_current_buf(), r1, c1, r2, c2,
            { new_name })

        vim.api.nvim_exec2('Move ' .. new_filename, { output = false })
    end,
    {
        nargs = 1,
        complete = function(...)
            require('jade.haskell')
                .rename_module_complete(...)
        end
    })

vim.api.nvim_create_user_command('HsTest', function()
        local hs = require('jade.haskell')
        local t = hs.current_module_name()
        if not t then
            print('Failed to get module name')
            return
        end
        local full_filename = vim.fn.expand('%:p:r')
        local source_root, tail = hs.source_root(full_filename, t.name)
        if not source_root then
            print('Filename not right, not proceeding')
            return
        end

        -- FIXME: discover if it's tests/ instead of test/
        local new_name = (function()
            local head2 = hs.remove_suffix(source_root, 'src/')
            if head2 then
                return head2 .. 'test/' .. tail .. 'Spec.hs'
            end

            head2 = hs.remove_suffix(source_root, 'test/')
            if head2 then
                tail = tail:gsub('Spec$', '')
                return head2 .. 'src/' .. tail .. '.hs'
            end

            print("Not src/ or test/, dunno what to do")
            return nil
        end)()
        if not new_name then return end

        vim.api.nvim_exec2('edit ' .. new_name, { output = false })
    end,
    { nargs = 0 })
