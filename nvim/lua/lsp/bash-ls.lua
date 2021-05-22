local bash_ls = LSP_BIN_PATH .. "/bash-language-server"
require'lspconfig'.bashls.setup{
    cmd = { bash_ls, "start" }
}
