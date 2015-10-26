#!/bin/bash

source ./bootstrap.sh

NAME="Plex Media Server"
URL="https://downloads.plex.tv/plex-media-server/0.9.12.13.1464-4ccd2ca/plexmediaserver_0.9.12.13.1464-4ccd2ca_amd64.deb"
FILE=".tmp/plexmediaserver.deb"

info "Installing $NAME"

if test ! "[ -f /usr/share/applications/plexmediamanager.desktop ]"; then
  download_source "$URL" "$FILE"
  install_dpkg "$FILE"
  rm "$FILE"
fi

success "$NAME installed"
