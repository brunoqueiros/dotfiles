#!/bin/bash

source ./bootstrap.sh

NAME="Virtualbox 5.0"

info "Installing $NAME"

if test ! "$(which virtualbox)"; then
  install "virtualbox"
fi

success "$NAME installed"
