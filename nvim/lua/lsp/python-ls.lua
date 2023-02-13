require 'lspconfig'.pylsp.setup {
    on_attach = require 'lsp'.common_on_attach,
    settings = {
        pylsp = {
            configurationSources = { "flake8" },
            plugins = {
                jedi_completion = { enabled = true, fuzzy = true },
                jedi_hover = { enabled = true },
                jedi_references = { enabled = true },
                jedi_signature_help = { enabled = true },
                jedi_symbols = { enabled = true, all_scopes = true },
                pycodestyle = { enabled = false },
                flake8 = {
                    enabled = true,
                    ignore = {},
                    maxLineLength = 100,
                    maxComplexity = 10
                },
                mypy = { enabled = true },
                black = { enabled = false, cache_config = true, line_length = 100 },
                -- pyls_isort = { enabled = true, profile = "black" },
                isort = { enabled = false, profile = "black" },
                ruff = { enabled = true },
                yapf = { enabled = false },
                pylint = { enabled = false },
                pydocstyle = { enabled = false },
                mccabe = { enabled = false },
                preload = { enabled = false },
                rope_completion = { enabled = false },
                rope_autoimport = { enabled = false },
            }
        }
    }
}
