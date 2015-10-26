#!/bin/bash

source ./bootstrap.sh

NAME="Node.js"

info "Installing $NAME"

if test ! "$(which nodejs)"; then
  curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash - > /dev/null 2>&1
  install "nodejs"
  install "build-essential"
fi

success "$NAME installed"
