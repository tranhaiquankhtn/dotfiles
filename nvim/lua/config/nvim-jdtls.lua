local VIM_DATA_PATH = vim.fn.stdpath('data')
local jdtls_dir = VIM_DATA_PATH .. '/lsp_servers/jdtls'

local config = {
    cmd = {
        -- 'java',
        '/Library/Java/JavaVirtualMachines/jdk-12.0.2.jdk/Contents/Home/bin/java', -- or '/path/to/java11_or_newer/bin/java'
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
        '-data', '~/projects/eclipse-workspace'
    },

    root_dir = require('jdtls.setup').find_root({ '.git', 'mvnw', 'gradlew' }),
    settings = {
        java = {
        }
    },
    init_options = {
        bundles = {}
    },
}
require('jdtls').start_or_attach(config)
