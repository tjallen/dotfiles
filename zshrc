# source /Users/Thom/.bash_profile 

export CLICOLOR=1
export TERM=xterm-256color

export PATH="$PATH:/opt/yarn-[version]/bin"
export PATH="$PATH:`yarn global bin`"

unsetopt correct_all

alias mongod="mongod --dbpath /users/thom/data/db/"

alias vim="nvim"
alias python=/usr/local/bin/python3

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
