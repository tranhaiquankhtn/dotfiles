local sumneko_root_path = LSP_SERVERS .. "/sumneko_lua"
local sumneko_binary = sumneko_root_path .. "/extension/server/bin/lua-language-server"

require 'lspconfig'.sumneko_lua.setup {
    -- cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    cmd = { sumneko_binary },
    filetypes = { 'lua' },
    single_file_support = true,
    -- log_level = vim.lsp.protocol.MessageType.Warning,
    settings = { Lua = { telemetry = { enable = false } } },
    on_attach = require 'lsp'.common_on_attach,
}
