local VIM_DATA_PATH = vim.fn.stdpath('data')
local jdtls_dir = LSP_SERVERS .. '/../packages/jdtls'

local config = {
    cmd = {
        'java',
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xms1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

        '-jar', jdtls_dir .. '/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
        '-configuration', jdtls_dir .. '/config_mac',
        '-data', jdtls_dir .. '/workspace'
    },

    root_dir = require('jdtls.setup').find_root({ '.git', 'mvnw', 'gradlew' }),
    settings = {
        java = {
            signatureHelp = {enabled = true},
            import = {enabled = true},
            rename = {enabled = true}
        }
    },
    init_options = {
        bundles = {}
    },
}
require('jdtls').start_or_attach(config)
