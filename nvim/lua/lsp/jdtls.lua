local VIM_DATA_PATH = vim.fn.stdpath('data')
local JDTLS = VIM_DATA_PATH .. '/lsp_servers/jdtls'
local HOME = os.getenv('HOME')

require'lspconfig'.jdtls.setup{
  cmd = {

    -- 💀
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

    -- 💀
    '-jar', JDTLS .. '/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',


    -- 💀
    '-configuration', JDTLS .. '/config_mac',


    -- 💀
    -- See `data directory configuration` section in the README
    '-data', HOME .. '/projects/eclipse-workspace'
  },
  filetypes = { "java" },
  init_options = {
      jvm_args = {},
      workspace = HOME .. "/projects/eclipse-workspace"
    },
  single_file_support = true,

}

