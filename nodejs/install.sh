#!/bin/bash

source ./bootstrap.sh

NAME="Nodejs"

info "Installing $NAME"

if test ! "$(which node)"; then
  curl -sL https://deb.nodesource.com/setup | sudo bash -
  install "nodejs"
  install "build-essential"
fi

success "$NAME installed"
