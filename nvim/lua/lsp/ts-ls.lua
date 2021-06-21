require'lspconfig'.tsserver.setup {
    on_attach = require'lsp'.tsserver_on_attach
}
