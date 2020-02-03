# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

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

# MongoDB
alias mongod="docker run \
    --name mongodb \
    -v $HOME/Workspaces/mongodb-ws:/home/mongodb \
    -p 27017:27017 \
    -e MONGO_INITDB_ROOT_USERNAME=root \
    -e MONGO_INITDB_ROOT_PASSWORD=password \
    -d \
    mongo:4.2.1 \
    --config /home/mongodb/config/mongod.conf"
alias mongo="docker exec \
  -it \
  mongodb \
  mongo --username root --password password --authenticationDatabase admin"