#!/bin/bash

source ./bootstrap.sh

NAME="Chromium"

info "Installing $NAME"

if test ! "$(which chromium-browser)"; then
  install "chromium-browser"
fi

success "$NAME installed"