#!/bin/bash

source ./bootstrap.sh

NAME="Google Chrome"

info "Installing $NAME"

if test ! "$(which google-chrome)"; then
  sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
  add_key "https://dl-ssl.google.com/linux/linux_signing_key.pub"
  update
  install "google-chrome-stable"
fi

success "$NAME installed"