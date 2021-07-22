local utils = require('utils')

local cmd = vim.cmd
local indent = 4
cmd 'syntax enable'
cmd 'filetype plugin indent on'

utils.opt('b', 'autoindent', true)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'expandtab', true)
utils.opt('o', 'wrap', false)
utils.opt('o', 'ruler', true)
utils.opt('o', 'laststatus', 2)
utils.opt('o', 'tabstop', indent)
utils.opt('o', 'softtabstop', indent)
utils.opt('o', 'smarttab', true)
utils.opt('o', 'shiftwidth', indent)
utils.opt('o', 'shiftround', true)
utils.opt('o', 'showtabline', 2)
utils.opt('o', 'numberwidth', 5)
utils.opt('o', 'encoding', 'UTF-8')
utils.opt('o', 'fileencoding', 'utf-8')
utils.opt('o', 'incsearch', true)
utils.opt('o', 'textwidth', 80)
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'cmdheight', 2)
utils.opt('o', 'backup', false)
utils.opt('o', 'writebackup', false)
utils.opt('o', 'swapfile', false)
utils.opt('o', 'updatetime', 300)
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'list', true)
utils.opt('o', 'listchars', 'tab:>-,trail:-,eol:↵')


-- invalid settings
-- utils.opt('o', 'guioptions', '-=e')
-- utils.opt('o', 'colorcolumn', '=+1' )
-- utils.opt('o', 'iskeyword', '+=-')
-- utils.opt('o', 't_Co', '256')

-- Highlight on yank
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'
