local yamlls_bin = LSP_SERVERS .. "/yamlls/node_modules/yaml-language-server/bin/yaml-language-server"
require 'lspconfig'.yamlls.setup {
    cmd = { yamlls_bin, "--stdio" },
    filetypes = { 'yaml', 'yml' },
    single_file_support = true,
    settings = {
        -- https://github.com/redhat-developer/vscode-redhat-telemetry#how-to-disable-telemetry-reporting
        redhat = { telemetry = { enabled = false } },
    },
}
