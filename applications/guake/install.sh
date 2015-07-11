#!/bin/bash

source ./bootstrap.sh

NAME="Guake"

info "Installing $NAME"

if test ! "$(which guake)"; then
	install "guake"
fi

success "$NAME installed"