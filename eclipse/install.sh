#!/bin/bash

source ./bootstrap.sh

NAME="Eclipse Mars 1"
URL="http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/mars/1/eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz"
FILE=".tmp/eclipse.tar.gz"

info "Installing $NAME"

if [ ! -f /usr/share/applications/eclipse.desktop ]; then
  download_source "$URL" "$FILE"
  extract_tar "$FILE" "/opt/"
  sudo sh -c 'echo "[Desktop Entry]
  Name=Eclipse
  Type=Application
  Exec=/opt/eclipse/eclipse
  Terminal=false
  Icon=/opt/eclipse/icon.xpm
  Comment=Integrated Development Environment
  NoDisplay=false
  Categories=Development;IDE;
  Name[en]=Eclipse" >> "/usr/share/applications/eclipse.desktop"'
  rm "$FILE"
fi

success "$NAME installed"
