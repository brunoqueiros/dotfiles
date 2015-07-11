#!/bin/bash

source ./bootstrap.sh

NAME="Sublime Text 3"

info "Installing $NAME"

if test ! "$(which subl)"; then
  add_repo "ppa:webupd8team/sublime-text-3"
  update
  install "sublime-text-installer"
fi

success "$NAME installed"