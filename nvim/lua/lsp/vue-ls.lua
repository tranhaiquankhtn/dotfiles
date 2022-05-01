local vuels_bin = LSP_SERVERS .. "/vuels/node_modules/vls/bin/vls"
require'lspconfig'.vuels.setup{
    cmd = { vuels_bin },
    on_attach = require'lsp'.vuels_on_attach,
    init_options = {
      config = {
        css = {},
        emmet = {},
        html = {
          suggest = {}
        },
        javascript = {
          format = {}
        },
        stylusSupremacy = {},
        typescript = {
          format = {}
        },
        vetur = {
          completion = {
            autoImport = true,
            tagCasing = "kebab",
            useScaffoldSnippets = false
          },
          format = {
            options = {
                tabSize = 2,
                useTab = false
            },
            defaultFormatter = {
              js = "none",
              ts = "none"
            },
            defaultFormatterOptions = {},
            scriptInitialIndent = false,
            styleInitialIndent = false
          },
          useWorkspaceDependencies = false,
          validation = {
            script = true,
            style = true,
            template = true
          }
        }
      }
    }
}
