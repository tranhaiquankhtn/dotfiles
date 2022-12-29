require 'lspconfig'.yamlls.setup {
    on_attach = require 'lsp'.yaml_on_attach,
    filetypes = { 'yaml', 'yml' },
    single_file_support = true,
}
