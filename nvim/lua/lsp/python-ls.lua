local pyright_path = LSP_BIN_PATH .. "/pyright-langserver"
require'lspconfig'.pyright.setup{
    cmd = { pyright_path, "--stdio" }
}
