-- Map leader to space
vim.g.mapleader = ' '

-- Sensible defaults
require('settings')

local fn = vim.fn
local execute = vim.api.nvim_command

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- install plugins 
require('plugins')

-- key mappings
require('mappings')


-- Setup Lua language server using submodule
require('lsp')
require('lsp.lua-ls')
require('lsp.bash-ls')
require('lsp.docker-ls')
require('lsp.go-ls')
require('lsp.html-ls')
require('lsp.python-ls')
require('lsp.ts-ls')
require('lsp.vue-ls')

-- themes
require('themes')

-- Config for the plugins
require('config.efm')
require('config.compe')
require('config.neocomment')
require('config.starify')
require('config.galaxyline')
