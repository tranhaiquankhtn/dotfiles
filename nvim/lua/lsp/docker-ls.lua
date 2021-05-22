local dockerls = LSP_BIN_PATH .. "/docker-langserver"
require'lspconfig'.dockerls.setup{
    cmd = { dockerls, "--stdio" }
}
