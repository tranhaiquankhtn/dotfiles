-- Map leader to space
vim.g.mapleader = ' '

-- Sensible defaults
require('settings')


local fn = vim.fn
local execute = vim.api.nvim_command

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path })
    execute 'packadd packer.nvim'
end
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- install plugins
require('plugins')

-- key mappings
require('mappings')




-- themes
require('themes')

-- Config for the plugins
require('config.mason')
require('config.efm')
-- require('config.compe')
require('config.neocomment')
require('config.starify')
require('config.galaxyline')
require('config.gitsigns')
require('config.telescope')
require('config.nvim-tree')
require('config.rust-tools')
require('config.dart-vim-plugin')
require('config.nvim-cmp')
require('config.treesitter')
require('config.treesitter-textobject')

-- Setup Lua language server using submodule
require('lsp')
require('lsp.lua-ls')
require('lsp.bash-ls')
require('lsp.docker-ls')
require('lsp.go-ls')
require('lsp.html-ls')
require('lsp.python-ls')
require('lsp.diagnostic-ls')
require('lsp.ts-ls')
require('lsp.vue-ls')
-- require('lsp.tailwindls')
require('lsp.dart-ls')
require('lsp.rust-ls')
require('lsp.toml-ls')
require('lsp.yaml-ls')
-- require('lsp.json-ls')
require('lsp.lemminx')
-- Java
require('lsp.jdtls')
require('config.nvim-jdtls')
