#!/bin/bash

source ./bootstrap.sh

NAME="Caffeine"

info "Installing $NAME"

if test ! "$(which caffeine-plus)"; then
  add_repo "ppa:nilarimogard/webupd8"
  update
  install "caffeine-plus"
fi

success "$NAME installed"
