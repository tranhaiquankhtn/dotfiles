" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $VIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'rakr/vim-one'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'bling/vim-bufferline'

Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'mattn/efm-langserver'


call plug#end()

