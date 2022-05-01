local gopls_bin = LSP_SERVERS .. "/go/gopls"
require'lspconfig'.gopls.setup{
    cmd = {gopls_bin}
}

