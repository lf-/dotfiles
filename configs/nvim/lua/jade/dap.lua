local dap = require('dap')

dap.adapters.buck2 = {
    type = 'executable',
    command = 'buck2',
    args = {'starlark', 'debug-attach'},
}

dap.configurations.bzl = {
    {
        type = 'buck2',
        request = 'attach',
        name = 'Debug buck2',
    }
}
