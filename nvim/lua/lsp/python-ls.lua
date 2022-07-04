-- local util = require 'lspconfig.util'
-- local pyls_bin = LSP_SERVERS .. "/pyright/node_modules/pyright/dist/pyright-langserver.js"
--
-- local root_files = {
--     'pyproject.toml',
--     'setup.py',
--     'setup.cfg',
--     'requirements.txt',
--     'Pipfile',
--     'pyrightconfig.json',
-- }
--
-- local function organize_imports()
--     local params = {
--         command = 'pyright.organizeimports',
--         arguments = { vim.uri_from_bufnr(0) },
--     }
--     vim.lsp.buf.execute_command(params)
-- end

require 'lspconfig'.pyright.setup {
    on_attach = require 'lsp'.common_on_attach,
    flags = {
        debounce_text_changes = 150,
    },
    -- settings = {
    --     cmd = { pyls_bin, "--stdio" },
    --     filetypes = { 'python' },
    --     root_dir = util.root_pattern(unpack(root_files)),
    --     single_file_support = true,
    --     settings = {
    --         python = {
    --             analysis = {
    --                 autoSearchPaths = true,
    --                 useLibraryCodeForTypes = true,
    --                 diagnosticMode = 'workspace',
    --             },
    --         },
    --     },
    --
    --     commands = {
    --         PyrightOrganizeImports = {
    --             organize_imports,
    --             description = 'Organize Imports',
    --         },
    --     },
    --
    -- }
}
