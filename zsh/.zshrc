# XDG config
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_RUNTIME_DIR=$HOME/.run
export XDG_BIN_DIR=$HOME/.bin
export XDG_STATE_HOME=$HOME/.local/state

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

export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"
export HISTFILE="$XDG_CONFIG_HOME/zsh/.zhistory"
source $ZSH/oh-my-zsh.sh

# Xorg-xauth
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

# Neovim
export VIMRC="$XDG_CONFIG_HOME/nvim/init.vim"
export VIMINFOFILE="$XDG_CACHE_HOME/vim/viminfo"

# User configuration
export LANG=en_US.UTF-8
export EDITOR='nvim'
export ARCHFLAGS="-arch x86_64"
export TERM=xterm-256color
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS=$TERMINFO_DIRS:$XDG_DATA_HOME/terminfo
export DISABLE_AUTO_TITLE="false"

# git
export GIT_CONFIG="$XDG_CONFIG_HOME/git/config"

# less
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

# mysql
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history


# ssh config
if [ -s "${XDG_CONFIG_HOME}/ssh/config" ]
then
    SSH_CONFIG="-F ${XDG_CONFIG_HOME}/ssh/config"
fi

if [ -s "${XDG_CONFIG_HOME}/ssh/id_rsa" ]
then
    SSH_ID="-i ${XDG_CONFIG_HOME}/ssh/id_rsa"
fi

# Exa
PATH=$PATH:$XDG_BIN_DIR:/opt/homebrew/bin
export EXA_COLORS="hs_err_pid*=37;41;1"

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

# Neovim
export NVIM_HOME=$XDG_DATA_HOME/nvim
PATH=$PATH:$NVIM_HOME/bin

# Postgres
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_STATE_HOME/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"

# MITM proxy
alias mitmproxy="mitmproxy --set confdir=$XDG_CONFIG_HOME/mitmproxy"
alias mitmweb="mitmweb --set confdir=$XDG_CONFIG_HOME/mitmproxy"


# Docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME"/docker-machine


# Gradle
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle-7.4.2
PATH=$GRADLE_USER_HOME/bin:$PATH

# NPM&Yarn
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NODE_HOME=$HOME/.local/share/node
PATH=$NODE_HOME/bin:$PATH

export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/yarnrc"'

# for pyenv compile
export PYENV_ROOT=$XDG_DATA_HOME/pyenv
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

# alias
alias vim='nvim'
alias ssh="ssh $SSH_CONFIG $SSH_ID "
alias ssh-copy-id="ssh-copy-id $SSH_ID"
alias ls="$HOME/.bin/lsd"
alias "ls -l"="$HOME/.bin/lsd -l"
alias ll="$HOME/.bin/lsd -al"
#
# wget
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
alias wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"
