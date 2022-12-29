local flake8 = {
    LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
    lintStdin = true,
    lintFormats = { "%f:%l:%c: %m" },
    lintIgnoreExitCode = true
}

-- local autoflake = {
--     formatCommand = "autoflake --remove-all-unused-imports --remove-unused-variables -",
--     formatStdin = true
-- }
--
local isort = { formatCommand = "isort --quiet -", formatStdin = true }
local isort_pre = { formatCommand = "isort --force-single-line-imports --quiet -", formatStdin = true }
-- local yapf = { formatCommand = "yapf --quiet", formatStdin = true }
local black = { formatCommand = "black --quiet -", formatStdin = true }

-- local prettier = { formatCommand = "./node_modules/.bin/prettier --stdin-filepath ${INPUT}", formatStdin = true }
--
-- local eslint = {
--     lintCommand = "./node_modules/.bin/eslint_d -f unix --stdin --stdin-filename ${INPUT}",
--     lintIgnoreExitCode = true,
--     lintStdin = true,
--     lintFormats = {"%f:%l:%c: %m"},
--     formatCommand= "./node_modules/.bin/eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
--     formatStdin = true
-- }


local html_prettier = {
    formatCommand = './node_modules/.bin/prettier ${--tab-width:tabWidth} ${--single-quote:singleQuote} --parser html',
    formatStdin = true
}

local css_prettier = {
    formatCommand = './node_modules/.bin/prettier ${--tab-width:tabWidth} ${--single-quote:singleQuote} --parser css'
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

-- local hadolint = {
--     lintCommand = 'hadolint',
--     lintFormats = { '%f:%l %m' }
-- }
--
-- local yamllint = {
--     lintCommand = 'yamllint -d "{extends: default, rules: {line-length: {max: 120}}}" -f parsable -',
--     lintFormats = true
-- }
--
-- local luaformat = {
--     formatCommand = "lua-format -i",
--     formatStdin = true
-- }
--
require 'lspconfig'.efm.setup {
    init_options = { documentFormatting = true, codeAction = true },
    filetypes = { "python", "html", "css", "json", "sh", },
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

            -- dockerfile = { hadolint },
            -- yaml = {yamllint},
            -- javascript = {eslint, prettier},
            -- javascriptreact = {eslint, prettier},
            -- typescript = {eslint, prettier},
            -- typescriptreact = {eslint, prettier},
        }
    }
}
