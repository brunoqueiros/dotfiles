#!/bin/bash

source ./bootstrap.sh

NAME="Skype"

info "Installing $NAME"

if test ! "$(which skype)"; then
  add_repo "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
  update
  install "skype"
fi

success "$NAME installed"