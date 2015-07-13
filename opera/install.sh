#!/bin/bash

source ./bootstrap.sh

NAME="Opera"
URL="http://get.geo.opera.com.global.prod.fastly.net/pub/opera/desktop/30.0.1835.88/linux/opera-stable_30.0.1835.88_amd64.deb"
FILE=".tmp/opera.deb"

info "Installing $NAME"

if test ! "$(which opera)"; then
  download_source "$URL" "$FILE"
  install_dpkg "$FILE"
  rm "$FILE"
fi

success "$NAME installed"