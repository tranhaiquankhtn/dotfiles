local rustls_bin = LSP_SERVERS .. "/rust/rust_analyzer"
require'lspconfig'.rust_analyzer.setup {
    cmd = { rustls_bin }
}
