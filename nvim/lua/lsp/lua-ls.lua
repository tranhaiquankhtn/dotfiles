require 'lspconfig'.lua_ls.setup {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    single_file_support = true,
    -- log_level = vim.lsp.protocol.MessageType.Warning,
    settings = {
        Lua = {
            telemetry = {
                enable = false
            },
            diagnostics = {
                globals = { 'vim' }
            }
        }
    },
    on_attach = require 'lsp'.common_on_attach,
}
