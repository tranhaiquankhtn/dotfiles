require 'lspconfig'.tsserver.setup {
    on_attach = require 'lsp'.tsserver_on_attach,
    file_types = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx"
    }
}
