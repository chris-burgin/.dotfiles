# zsh
ZSH_DISABLE_COMPFIX=true

ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"

plugins=(git npm)

export ZSH="/home/chrisburgin/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
alias ezsh="nvim ~/.zshrc && source ~/.zshrc"
alias szsh="source ~/.zshrc"

# git
alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"

# path
export MYSQL_ROOT_PASSWORD=""

# nvim
export PATH=$HOME/local/nvim/bin:$PATH # add nvim to the path
export EDITOR=nvim
alias clearswap="rm -rf ~/.local/share/nvim/swap/*"

# tmux
alias t="tmux a -t"

# bat: Used by nvim for file preview. Handled highlighting.
export BAT_THEME="base16"

# ag: Super fast searching.
alias ag='ag --path-to-ignore ~/.ignore'

# fzf: All sort of magic! ctrl-r and ctrl-t to start!
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude node_modules --exclude dist'
fpath+=${ZDOTDIR:-~}/.zsh_functions
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# backup: Backup script that syncs all of my important files
alias backup="sh ~/backup/sync.sh"

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOBIN=$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:$HOME/.yarn/bin

# NVM (node version manager): Allows quickly switching the node version.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# 1Password Projects
## B5
export B5BUGSNAG_ENABLED='false'
export B5BUGSNAG_APIKEY=''
export B5THROTTLER_ENABLED='false'
export B5_ASSETS_SURVEY_ORIGIN="https://survey.b5local.com:3333"
export b5dir="~/go/src/go.1password.io/b5/"
alias cdb5="cd $b5dir"
alias b5prep="ds && dcu && make clean all"
alias mtui="make client/web-ui/test"

## Knox
export knoxdir="~/development/knox"
alias cdknox="cd $knoxdir"

# deno
export DENO_INSTALL="/home/chrisburgin/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# docker
export PATH=/usr/bin:$PATH
