# zsh
ZSH_DISABLE_COMPFIX=true
ZSH_THEME="robbyrussell"
# ZSH_THEME="dracula"
plugins=(git)
export ZSH="/home/chrisburgin/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
alias ezsh="nvim ~/.zshrc && source ~/.zshrc"
alias szsh="source ~/.zshrc"

# path
export PATH=$HOME/local/nvim/bin:$PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock
export MYSQL_ROOT_PASSWORD=""

# editor: Used by tools to open your editor of choice.
export EDITOR=nvim
alias clearswap="rm -rf ~/.local/share/nvim/swap/*"

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOBIN=$GOPATH/bin

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:$HOME/.yarn/bin

# git: Custom git commands not added under the zsh git plugin.
 alias gpl="git pull"

# docker
alias dc="sudo docker-compose"
alias dcu="sudo docker-compose up -d"
alias dcd="sudo docker-compose down"
alias dps="sudo docker-compose ps"

# fzf: All sort of magic! ctrl-r and ctrl-t to start!
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude node_modules --exclude dist'
fpath+=${ZDOTDIR:-~}/.zsh_functions
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ag: Super fast searching.
alias ag='ag --path-to-ignore ~/.ignore'

# tmux: Terminal window manager.
alias tmuxa="tmux a -t"
alias tpair='sudo tmux -S /tmp/pair new-session -d -s pair && sudo chmod 777 /tmp/pair'
alias tpairattach='tmux -S /tmp/pair attach -t pair'
alias tpairclose='tmux -S /tmp/pair kill-session -a'

# bat: Used by nvim for file preview. Handled highlighting.
export BAT_THEME="base16"

# NVM (node version manager): Allows quickly switching the node version.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# B5
export B5_ENABLE_HOT_RELOAD="false"
export B5_PROXY_BASE_URL="b5local.com:4000"

export B5THROTTLER_ENABLED='false'

export b5dir="~/go/src/go.1password.io/b5/"
alias cdb5="cd $b5dir"

alias sb5="make run-server & make run-frontend-proxy-server"

# core
export coredir="/Users/chrisburgin/Development/core"
alias cdcore="cd $coredir"

# backup: Backup script that syncs all of my important files
alias backup="sh ~/backup/sync.sh"

# prayer app
export db_username="root"
export db_password=""
export db_hostname="127.0.0.1"
alias cdp="cd ~/go/src/github.com/chris-burgin/prayer_api"
