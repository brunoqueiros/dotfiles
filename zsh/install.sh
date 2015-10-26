#!/bin/bash

source ./bootstrap.sh

NAME="oh-my-zsh"

info "Installing $NAME"

if test ! "$(which zsh)"; then
  install "zsh"
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

success "$NAME installed"
