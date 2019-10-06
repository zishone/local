# ZSH
setopt no_share_history
unsetopt share_history

# VIM
export EDITOR="vim"
export VISUAL="vim"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Golang
export GOPATH=$HOME/Workspaces/golang-ws
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Ruby
eval "$(rbenv init -)"
export PATH=$PATH:$HOME/.gem/ruby/2.6.0/bin

# MongoDB
alias mongod="cd $HOME && mongod --config $HOME/Workspaces/mongodb-ws/config/mongod.conf && cd -"
alias mongoroot="mongo --username root --password password --authenticationDatabase admin"
