local dockerls_bin = LSP_SERVERS .. "/dockerfile/node_modules/dockerfile-language-server-nodejs/bin/docker-langserver"
require'lspconfig'.dockerls.setup{
    cmd = { dockerls, "--stdio" }
}
