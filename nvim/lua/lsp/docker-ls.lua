local util = require 'lspconfig.util'
local dockerls = LSP_SERVERS .. "/dockerls/node_modules/dockerfile-language-server-nodejs/bin/docker-langserver"
require 'lspconfig'.dockerls.setup {
    cmd = { dockerls, "--stdio" },
    filetypes = { 'dockerfile' },
    root_dir = util.root_pattern 'Dockerfile',
    single_file_support = true,
}
