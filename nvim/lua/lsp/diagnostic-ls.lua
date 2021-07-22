require('lspconfig').diagnosticls.setup{
  filetypes={'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'vue'},
  init_options = {
    linters = {
      eslint = {
        command = './node_modules/.bin/eslint',
        rootPatterns = {'.git', '.eslintrc.js', 'package.json'},
        debounce = 100,
        args = {
          '--stdin',
          '--stdin-filename',
          '%filepath',
          '--format',
          'json'
        },
        sourceName = 'eslint',
        parseJson = {
          errorsRoot = '[0].messages',
          line = 'line',
          column = 'column',
          endLine = 'endLine',
          endColumn = 'endColumn',
          message = '${message} [${ruleId}]',
          security = 'severity'
        },
        securities = {
          [2] = 'error',
          [1] = 'warning',
        },
      },
    },
    filetypes = {
      javascript = 'eslint',
      typescript = 'eslint',
      javascriptreact = 'eslint',
      typescriptreact = 'eslint'
    },
    formatters = {
      prettier = {
        command ='./node_modules/.bin/prettier',
        args = {"--stdin-filepath" ,"%filepath", '--single-quote', '--print-width 88'}
      }
    },
    formatFiletypes = {
      javascript = 'prettier',
      typescript = 'prettier',
      javascriptreact = 'prettier',
      typescriptreact = 'prettier',
      vue = 'prettier'
    },
  }
}
