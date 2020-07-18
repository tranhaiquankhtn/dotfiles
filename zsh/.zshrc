# XDG config
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_RUNTIME_DIR=$HOME/.run

# FZF 
export FZF_BASE="$XDG_CONFIG_HOME/fzf"
export FZF_DEFAULT_OPTS="--extended"
[ -f $FZF_BASE/fzf.zsh ] && source $FZF_BASE/fzf.zsh

# zsh config
CASE_SENSITIVE="true"
ZSH_THEME="robbyrussell"
plugins=(
    git
    zsh-syntax-highlighting
    fzf
)

export ZSH="$XDG_CONFIG_HOME/.oh-my-zsh"
export HISTFILE="$XDG_CONFIG_HOME/zsh/.zhistory"
source $ZSH/oh-my-zsh.sh


export VIMRC="$XDG_CONFIG_HOME/nvim/init.vim"

# User configuration
export LANG=en_US.UTF-8
export EDITOR='nvim'
export ARCHFLAGS="-arch x86_64"
export TERM=xterm-256color


# git
export GIT_CONFIG="$XDG_CONFIG_HOME/git/config"

# less
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
