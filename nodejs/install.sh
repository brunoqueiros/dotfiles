#!/bin/bash

source ./bootstrap.sh

NAME="Nodejs"

info "Installing $NAME"

if test ! "$(which node)"; then
  curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash -
  install "nodejs"
  install "build-essential"
fi

success "$NAME installed"
