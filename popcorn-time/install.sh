#!/bin/bash

source ./bootstrap.sh

NAME="Popcorn Time"

info "Installing $NAME"

if test ! "$(which google-chrome)"; then
  add_repo "ppa:webupd8team/popcorntime"
  update
  install "popcorn-time"
fi

success "$NAME installed"