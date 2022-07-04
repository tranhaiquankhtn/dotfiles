local gopls_bin = LSP_SERVERS .. "/gopls/gopls"
require 'lspconfig'.gopls.setup {
    on_attach = require 'lsp'.common_on_attach,
    flags = {
        debounce_text_changes = 150,
    },
    -- cmd = { gopls_bin }
}
