local pyright_path = '~/.local/share/npm/bin/pyright-langserver'
require'lspconfig'.pyright.setup{
    cmd = { pyright_path, "--stdio" }
}
