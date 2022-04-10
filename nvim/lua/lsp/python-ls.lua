local pyright_binary = LSP_SERVERS .. "/python/node_modules/pyright/index.js"
require'lspconfig'.pyright.setup{
    cmd = { pyright_binary, "--stdio" }
}
