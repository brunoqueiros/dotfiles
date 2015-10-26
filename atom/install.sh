#!/bin/bash

source ./bootstrap.sh

NAME="Atom"

info "Installing $NAME"

if test ! "$(which atom)"; then
  add_repo "ppa:webupd8team/atom"
  update
  install "atom"
fi

success "$NAME installed"
