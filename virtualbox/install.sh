#!/bin/bash

source ./bootstrap.sh

NAME="Virtualbox 5.0"
URL="http://dlc-cdn.sun.com/virtualbox/5.0.0_RC3/virtualbox-5.0_5.0.0~rc3-101436~Ubuntu~trusty_amd64.deb"
FILE=".tmp/virtualbox-5.deb"

info "Installing $NAME"

if test ! "$(which virtualbox)"; then
  download_source "$URL" "$FILE"
  install_dpkg "$FILE"
  rm "$FILE"
fi

success "$NAME installed"