# zsh
ZSH_DISABLE_COMPFIX=true
ZSH_THEME="robbyrussell"
plugins=(git)
export ZSH="/home/chrisburgin/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
alias ezsh="nvim ~/.zshrc && source ~/.zshrc"
alias szsh="source ~/.zshrc"


# git
alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"

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

# docker
alias dc="sudo docker-compose"
alias dcu="sudo docker-compose --profile linux up -d"
alias dcd="sudo docker-compose down"
alias dps="sudo docker-compose ps"

# fzf: All sort of magic! ctrl-r and ctrl-t to start!
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude node_modules --exclude dist'
fpath+=${ZDOTDIR:-~}/.zsh_functions
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ag: Super fast searching.
alias ag='ag --path-to-ignore ~/.ignore'

# bat: Used by nvim for file preview. Handled highlighting.
export BAT_THEME="base16"

# NVM (node version manager): Allows quickly switching the node version.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# B5
export B5BUGSNAG_ENABLED='false'
export B5BUGSNAG_APIKEY=''
export B5THROTTLER_ENABLED='false'
export B5_ASSETS_SURVEY_ORIGIN="https://survey.b5local.com:3333"

export b5dir="~/go/src/go.1password.io/b5/"
alias cdb5="cd $b5dir"

alias msr="make server/run"
alias mtui="make client/web-ui/test"

# backup: Backup script that syncs all of my important files
alias backup="sh ~/backup/sync.sh"
