local dap = require('dap')

dap.adapters.buck2 = {
    type = 'executable',
    command = 'direnv',
    args = {'exec', '.', 'buck2', 'starlark', 'debug-attach'},
}

dap.configurations.bzl = {
    {
        type = 'buck2',
        request = 'attach',
        name = 'Debug buck2',
    }
}
