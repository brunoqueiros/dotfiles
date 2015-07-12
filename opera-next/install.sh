#!/bin/bash

source ./bootstrap.sh

NAME="Opera Next"
URL="http://get.geo.opera.com.global.prod.fastly.net/pub/opera-beta/31.0.1889.50/linux/opera-beta_31.0.1889.50_amd64.deb"
FILE="opera-next.deb"

info "Installing $NAME"

if test ! "$(which opera-beta)"; then
  download_source "$URL" "$FILE"
  install_dpkg "$FILE"
fi

success "$NAME installed"