ZSH_DISABLE_COMPFIX=true

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/chrisburgin/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR=nvim

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOBIN=$GOPATH/bin

export CROSSWAY_API_KEY="5ec64fd01975f55348e98797d20a44d260a3c36e"
export db_username="root"
export db_password="password"
export db_hostname="localhost"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:$HOME/.yarn/bin

# Alias
alias ezsh="nvim ~/.zshrc && source ~/.zshrc"
alias portcheck="lsof -n | grep LISTEN"
alias kw="ps -ax | grep -- --watch | awk '{print $1}' | xargs kill -15"

alias gco="git checkout"
alias gpl="git pull"

alias dc="docker-compose"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dps="docker-compose ps"
alias ds="sudo systemctl start docker"

export b5dir="~/go/src/go.1password.io/b5/"
export coredir="/Users/chrisburgin/Development/core"
alias cdb5="cd $b5dir"
alias cdcore="cd $coredir"

# fzf ignore dirs
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude node_modules --exclude dist'
fpath+=${ZDOTDIR:-~}/.zsh_functions

# ag ignore
alias ag='ag --path-to-ignore ~/.ignore'

# tmux
alias tpair='sudo tmux -S /tmp/pair new-session -d -s pair && sudo chmod 777 /tmp/pair'
alias tpairattach='tmux -S /tmp/pair attach -t pair'
alias tpairclose='tmux -S /tmp/pair kill-session -a'

export B5THROTTLER_ENABLED='true'

# bat
export BAT_THEME="base16"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# nvim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
