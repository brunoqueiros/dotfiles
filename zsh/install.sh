#!/bin/bash

source ./bootstrap.sh

NAME="oh-my-zsh"

info "Installing $NAME"

install "zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

success "$NAME installed"
