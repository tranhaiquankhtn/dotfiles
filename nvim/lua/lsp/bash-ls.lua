local bash_ls_bin = LSP_SERVERS .. "/bashls/node_modules/bash-language-server/bin/main.js"
require 'lspconfig'.bashls.setup {
    cmd = { bash_ls_bin, "start" }
}
