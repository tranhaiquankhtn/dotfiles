local flake8 = {
    LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
    lintStdin = true,
    lintFormats = { "%f:%l:%c: %m" },
    lintIgnoreExitCode = true
}

local isort = { formatCommand = "isort --quiet -", formatStdin = true }
local isort_pre = { formatCommand = "isort --force-single-line-imports --quiet -", formatStdin = true }
-- local yapf = { formatCommand = "yapf --quiet", formatStdin = true }
local black = { formatCommand = "black --quiet -", formatStdin = true }

local json_prettier = {
    formatCommand = 'prettier ${--tab-width:tabWidth} ${--single-quote:singleQuote} --parser json',
    formatStdin = true
}

local html_prettier = {
    formatCommand = './node_modules/.bin/prettier ${--tab-width:tabWidth} ${--single-quote:singleQuote} --parser html',
    formatStdin = true
}

local css_prettier = {
    formatCommand = './node_modules/.bin/prettier ${--tab-width:tabWidth} ${--single-quote:singleQuote} --parser css',
    formatStdin = true
}

local shfmt = {
    formatCommand = 'shfmt -ci -s -bn',
    formatStdin = true
}

local shellcheck = {
    lintCommand = './node_modules/bin/shellcheck -f gcc -x',
    lintSource = 'shellcheck',
    lintFormats = { '%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m', '%f:%l:%c: %tote: %m' }
}

local yamlfmt = {
    formatCommand = './node_modules/.bin/prettier ${--tab-width:tabWidth} ${--single-quote:singleQuote} --parser yaml',
    formatStdin = true
}

local yamllint = {
    lintCommand = 'yamllint -d "{extends: default, rules: {line-length: {max: 120}}}" -f parsable -',
    lintFormats = true
}

require 'lspconfig'.efm.setup {
    init_options = { documentFormatting = true, codeAction = true },
    filetypes = { "python", "html", "css", "json", "sh" },
    settings = {
        rootMarkers = { ".git/" },
        languages = {
            -- vue = { prettier },
            python = {
                isort_pre,
                -- autoflake,
                flake8,
                black,
                isort,
            },
            html = { html_prettier },
            css = { css_prettier },
            sh = { shellcheck, shfmt },
            json = { json_prettier },
            -- yaml = { yamllint },

            -- dockerfile = { hadolint },
            -- javascript = {eslint, prettier},
            -- javascriptreact = {eslint, prettier},
            -- typescript = {eslint, prettier},
            -- typescriptreact = {eslint, prettier},
        }
    }
}
