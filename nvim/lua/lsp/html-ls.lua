local htmlls = LSP_SERVERS .. "/html/node_modules/.bin/vscode-html-language-server"
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  cmd = { htmlls, "--stdio" },
  capabilities = capabilities,
  filetypes = { "html", "htmldjango" },
}
