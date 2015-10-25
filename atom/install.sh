#!/bin/bash

source ./bootstrap.sh

NAME="Atom"

info "Installing $NAME"

add_repo "ppa:webupd8team/atom"
update
install "atom"

success "$NAME installed"
