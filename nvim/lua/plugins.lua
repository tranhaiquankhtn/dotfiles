return require('packer').startup(function()
    use { 'wbthomason/packer.nvim', opt = true }

    -- Color scheme
    use { 'sainnhe/gruvbox-material' }
    use { 'ryanoasis/vim-devicons' }
    -- use 'gruvbox-community/gruvbox'
    use { 'nvim-treesitter/nvim-treesitter' }
    use { 'nvim-treesitter/nvim-treesitter-textobjects' }

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    -- nerdcommenter
    -- use { 'preservim/nerdcommenter' }
    use { 'terrortylor/nvim-comment' }

    -- lsp config
    use { 'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer' }

    -- For java
    -- use { 'hrsh7th/nvim-compe' }
    use { 'hrsh7th/vim-vsnip' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/nvim-cmp' }

    -- Vim dispatch
    use { 'tpope/vim-dispatch' }
    
    -- Fugitive for Git
    use { 'tpope/vim-fugitive' }

    -- Auto-pair
    use { 'jiangmiao/auto-pairs' }

    -- starify
    use { 'mhinz/vim-startify' }

    -- galaxyline
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use { 'voldikss/vim-floaterm' }
    -- use { 'romgrk/barbar.nvim', opt = true}

    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    use {'bling/vim-bufferline'}

    use { 'mbbill/undotree' }

    use { 'lukas-reineke/indent-blankline.nvim'}

    -- flutter
    use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
    use {'dart-lang/dart-vim-plugin'}
    use {'thosakwe/vim-flutter'}

    -- rust
    use { 'simrat39/rust-tools.nvim' }

    use { 'mfussenegger/nvim-jdtls' }

end)
