require 'lspconfig'.taplo.setup {
    -- cmd = { taplo_bin, "lsp", "stdio" },
    filetypes = { 'toml' },
    single_file_support = true
}
