local nls = require "null-ls"
local nls_utils = require "null-ls.utils"
local sources = {
  -- formatting
  nls.builtins.formatting.prettierd,
  nls.builtins.formatting.shfmt,
  nls.builtins.formatting.fixjson,
  nls.builtins.formatting.black.with { extra_args = { "--fast" } },
  nls.builtins.formatting.isort,
  nls.builtins.formatting.autoflake,
  nls.builtins.formatting.taplo,
  nls.builtins.formatting.yamlfmt,
  nls.builtins.formatting.lua_format,
  nls.builtins.formatting.rustfmt,
  nls.builtins.formatting.sql_formatter,
  nls.builtins.formatting.xmllint,
  nls.builtins.formatting.google_java_format,

  -- diagnostics
  nls.builtins.diagnostics.write_good,
  nls.builtins.diagnostics.markdownlint,
  nls.builtins.diagnostics.eslint_d,
  nls.builtins.diagnostics.flake8,
  nls.builtins.diagnostics.hadolint,
  nls.builtins.diagnostics.mypy,
  nls.builtins.diagnostics.ruff,
  nls.builtins.diagnostics.shellcheck,
  nls.builtins.diagnostics.sqlfluff.with({ extra_args = { "--dialect", "postgres" }}),
  nls.builtins.diagnostics.tsc,
  nls.builtins.diagnostics.yamllint,
  nls.builtins.diagnostics.zsh,
  nls.builtins.dotenv_linter,

  -- code actions
  nls.builtins.code_actions.eslint_d,
  nls.builtins.code_actions.refactoring,
  nls.builtins.code_actions.shellcheck,

  -- hover
  nls.builtins.hover.dictionary,
}

nls.setup({
    debounce = 150,
    save_after_format = false,
    sources = sources,
    root_dir = nls_utils.root_pattern ".git",
    diagnostics_format = "[#{c}] #{m}",
    on_attach = require 'lsp'.common_on_attach,
})
