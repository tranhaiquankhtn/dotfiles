local tsserver_bin = LSP_SERVERS .. "/tsserver/node_modules/typescript/bin/tsserver"
require 'lspconfig'.tsserver.setup {
    -- cmd = { tsserver_bin, "--stdio" },
    on_attach = require 'lsp'.tsserver_on_attach,
    flags = {
        debounce_text_changes = 150,
    },
    -- filetypes = {
    --     'javascript',
    --     'javascriptreact',
    --     'javascript.jsx',
    --     'typescript',
    --     'typescriptreact',
    --     'typescript.tsx',
    -- }
}
