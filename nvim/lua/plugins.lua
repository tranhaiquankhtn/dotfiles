return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}


    -- Color scheme
    -- use { 'sainnhe/gruvbox-material' }
    use { 'ryanoasis/vim-devicons' }
    use 'gruvbox-community/gruvbox'

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- nerdtree
    use 'preservim/nerdtree'

    -- nerdcommenter
    -- use 'preservim/nerdcommenter'
    use 'terrortylor/nvim-comment'

    -- lsp config
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'

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
    -- use { 'glepnir/galaxyline.nvim', opt = true}
    -- use { 'romgrk/barbar.nvim', opt = true}


end)
