require'lspconfig'.tsserver.setup {
    on_attach = require'lsp'.on_attach_no_formatting,
    file_types = {
        "javascript", "javascriptreact", "javascript.jsx", "typescript",
        "typescriptreact", "typescript.tsx"
    }
}
