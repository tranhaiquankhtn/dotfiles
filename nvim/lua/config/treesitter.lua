require'nvim-treesitter.configs'.setup {
    ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = {}, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = {"c"}, -- list of language that will be disabled
        additional_vim_regex_highlighting = false
    },
    context_commentstring = {
        enable = true,
        config = {typescript = {__default = '// %s', __multiline = '/* %s */'}}
    }
}
