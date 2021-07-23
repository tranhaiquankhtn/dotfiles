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


# Neovim
export VIMRC="$XDG_CONFIG_HOME/nvim/init.vim"
export VIMINFOFILE="$XDG_CACHE_HOME/vim/viminfo"

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

# ssh config
if [ -s "${XDG_CONFIG_HOME}/ssh/config" ]
then
    SSH_CONFIG="-F ${XDG_CONFIG_HOME}/ssh/config"
fi

if [ -s "${XDG_CONFIG_HOME}/ssh/id_rsa" ]
then
    SSH_ID="-i ${XDG_CONFIG_HOME}/ssh/id_rsa"
fi

alias ssh="ssh $SSH_CONFIG $SSH_ID "
alias ssh-copy-id="ssh-copy-id $SSH_ID"


# Vscode
export VSCODE_EXTENSIONS="${XDG_CONFIG_HOME}/vscode/extensions"

# ipython & Jupyter
export PYTHONHISTFILE=/dev/null
export POETRY_HOME=$HOME/.local/share/poetry
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export PYPY_HOME=$HOME/.local/share/pypy3.7
PATH=$PATH:$POETRY_HOME/bin

# Golang
export GOPATH=$HOME/.local/share/go
export GOROOT=/usr/local/go
PATH=$GOROOT/bin:$GOPATH/bin:$PATH

# Rust&Cargo
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
PATH=$PATH:$CARGO_HOME/bin


# MITM proxy
alias mitmproxy="mitmproxy --set confdir=$XDG_CONFIG_HOME/mitmproxy"
alias mitmweb="mitmweb --set confdir=$XDG_CONFIG_HOME/mitmproxy"


# Docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME"/docker-machine


# Gradle
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle

# NPM&Yarn
export NODE_HOME=$HOME/.local/share/nodejs
PATH=$NODE_HOME/bin:$PATH
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/yarnrc"'
