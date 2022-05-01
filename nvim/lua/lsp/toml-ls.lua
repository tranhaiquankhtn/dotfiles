local taplo_bin = LSP_SERVERS .. "/taplo/bin/taplo"
require'lspconfig'.taplo.setup{
    cmd = { taplo_bin, "lsp", "stdio" }
}
