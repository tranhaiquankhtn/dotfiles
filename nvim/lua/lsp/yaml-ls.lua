local yamlls_bin = LSP_SERVERS .. "/yaml/node_modules/yaml-language-server/bin/yaml-language-server"
require'lspconfig'.yamlls.setup{
    cmd = { yamlls_bin, "--stdio" },
    settings = {
    yaml = {
       -- other settings. note this overrides the lspconfig defaults.
      schemas = {
        ["https://raw.githubusercontent.com/instrumenta/kubernetes-json-schema/master/v1.18.0-standalone-strict/all.json"] = "/*.k8s.yaml",
         -- other schemas
      },
    },
  }
}

