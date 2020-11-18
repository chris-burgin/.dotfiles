ZSH_DISABLE_COMPFIX=true

# zsh
ZSH_THEME="robbyrussell"
plugins=(git)
export ZSH="/home/chrisburgin/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
alias ezsh="nvim ~/.zshrc && source ~/.zshrc"
alias szsh="source ~/.zshrc"

# editor
export EDITOR=nvim

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOBIN=$GOPATH/bin

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:$HOME/.yarn/bin

# custom git
 alias gpl="git pull"

# docker
alias dc="docker-compose"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dps="docker-compose ps"
alias ds="sudo systemctl start docker"

# fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude node_modules --exclude dist'
fpath+=${ZDOTDIR:-~}/.zsh_functions
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ag
alias ag='ag --path-to-ignore ~/.ignore'

# tmux
alias tpair='sudo tmux -S /tmp/pair new-session -d -s pair && sudo chmod 777 /tmp/pair'
alias tpairattach='tmux -S /tmp/pair attach -t pair'
alias tpairclose='tmux -S /tmp/pair kill-session -a'

# bat
export BAT_THEME="base16"

# nvim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# B5
export B5_ENABLE_HOT_RELOAD="true"
export B5_PROXY_BASE_URL="b5local.com:4000"

export B5STRIPE_ENABLED="true"
export B5STRIPE_PRIVATEKEY="sk_test_58pnbxcpWSPZu9mFrOOteP3Q00qqvdmtnw"
export B5STRIPE_PUBLICKEY="pk_test_TVY3u1TT7m05JWZz2TXVc11800gbd4IFzu"
export B5STRIPE_VERIFYEVENTS="false"

export B5THROTTLER_ENABLED='true'

export b5dir="~/go/src/go.1password.io/b5/"
alias cdb5="cd $b5dir"

alias sb5="make run-server & make run-frontend-proxy-server"

# core
export coredir="/Users/chrisburgin/Development/core"
alias cdcore="cd $coredir"

# backup
alias backup="sh ~/backup/sync.sh"
