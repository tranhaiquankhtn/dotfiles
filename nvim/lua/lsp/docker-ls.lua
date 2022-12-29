local util = require 'lspconfig.util'
require 'lspconfig'.dockerls.setup {
    filetypes = { 'dockerfile' },
    root_dir = util.root_pattern 'Dockerfile',
    single_file_support = true,
}
