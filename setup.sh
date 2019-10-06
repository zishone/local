#! /bin/sh

# Workspaces
mkdir $HOME/Workspaces

# General
mkdir $HOME/Workspaces/general-ws

# GoLang
mkdir $HOME/Workspaces/golang-ws
mkdir $HOME/Workspaces/golang-ws/bin
mkdir $HOME/Workspaces/golang-ws/pkg
mkdir $HOME/Workspaces/golang-ws/src

# MongoDB
mkdir $HOME/Workspaces/mongodb-ws
mkdir $HOME/Workspaces/mongodb-ws/config
mkdir $HOME/Workspaces/mongodb-ws/db
mkdir $HOME/Workspaces/mongodb-ws/log
cp ./mongodb/mongod.conf $HOME/Workspaces/mongodb-ws/config

# NodeJS
mkdir $HOME/Workspaces/nodejs-ws
