
local flake8 = {
    LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"}
}

local isort = {formatCommand = "isort --quiet -", formatStdin = true}

local yapf = {formatCommand = "yapf --quiet", formatStdin = true}
local black = {formatCommand = "black --quiet -", formatStdin = true}

local prettier = {formatCommand = "./node_modules/.bin/prettier --stdin-filepath ${INPUT}", formatStdin = true}

local eslint = {
    lintCommand = "./node_modules/.bin/eslint -f unix --stdin --stdin-filename ${INPUT}",
    lintIgnoreExitCode = true,
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"},
    formatCommand = "./node_modules/.bin/eslint --fix-to-stdout --stdin --stdin-filename=${INPUT}",
    formatStdin = true
}

local html_prettier = {
    formatCommand = './node_modules/.bin/prettier ${--tab-width:tabWidth} ${--single-quote:singleQuote} --parser html',
    formatStdin = true
}

local shfmt = {
    formatCommand = 'shfmt -ci -s -bn',
    formatStdin = true
}

local shellcheck = {
    lintCommand = './node_modules/bin/shellcheck -f gcc -x',
    lintSource = 'shellcheck',
    lintFormats = {'%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m', '%f:%l:%c: %tote: %m'}
}

local hadolint = {
    lintCommand = 'hadolint',
    lintFormats = {'%f:%l %m'}
}

local yamllint = {
    lintCommand = 'yamllint -f parsable -',
    lintFormats = true
}

require'lspconfig'.efm.setup {
    init_options = {documentFormatting = true, codeAction = true},
    filetypes = {"lua", "python", "html", "css", "json", "yaml", "vue", "sh", "dockerfile"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                formatCommand = "lua-format -i",
                formatStdin = true,
            },
            python = { flake8, isort, yapf },
            vue = { prettier },
            html = { html_prettier },
            sh = { shellcheck, shfmt },
            dockerfile = { hadolint },
            yaml = {yamllint}
        }
    }
}
