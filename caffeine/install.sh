#!/bin/bash

source ./bootstrap.sh

NAME="Caffeine"

info "Installing $NAME"

if test ! "$(which caffeine)"; then
  add_repo "ppa:caffeine-developers/ppa"
  update
  install "caffeine"
fi

success "$NAME installed"