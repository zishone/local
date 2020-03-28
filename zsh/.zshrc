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
  mongo:4.2 \
  --config /home/mongodb/config/mongod.conf"
alias mongosh="docker exec \
  -it \
  mongodb \
  mongo --username root --password password --authenticationDatabase admin"

# PostgreSQL
alias postgres="docker run \
  --name postgresql \
  -v $HOME/Workspaces/postgresql-ws:/home/postgresql \
  -p 5432:5432 \
  -e POSTGRES_PASSWORD=password \
  -e PGDATA=/home/postgresql/data \
  -d \
  postgres:9.6-alpine"
alias postgresh="PGPASSWORD=password psql --host 127.0.0.1 --port 5432 --username postgres"
