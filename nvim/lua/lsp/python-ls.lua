local pyls_bin = LSP_SERVERS .. "/python/node_modules/pyright/index.js"
require'lspconfig'.pyright.setup{
    cmd = { pyls_bin, "--stdio" }
}
