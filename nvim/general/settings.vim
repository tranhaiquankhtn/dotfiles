let g:mapleader = "\<Space>"
filetype plugin indent on
set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showtabline=2
set guioptions-=e  " Don't use GUI tabline


set nu
set ruler
set relativenumber
set numberwidth=5

set nocompatible
set t_Co=256
"set term=xterm-256color
set encoding=UTF-8
set termencoding=utf-8
set nobackup
set nowritebackup
set noswapfile
set autoindent
set smartindent
set showcmd
set incsearch
set noshowmode

set textwidth=80
set colorcolumn=+1

if !has('gui_running')
  set t_Co=256
endif

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
