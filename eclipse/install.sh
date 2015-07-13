#!/bin/bash

source ./bootstrap.sh

NAME="Eclipse Mars EE"
URL="http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/luna/SR2/eclipse-java-luna-SR2-linux-gtk-x86_64.tar.gz"
FILE=".tmp/eclipse.tar.gz"

info "Installing $NAME"

download_source "$URL" "$FILE"
extract_tar "$FILE" "/opt/"
sudo sh -c 'echo "[Desktop Entry]
Name=Eclipse 4
Type=Application
Exec=/opt/eclipse/eclipse
Terminal=false
Icon=/opt/eclipse/icon.xpm
Comment=Integrated Development Environment
NoDisplay=false
Categories=Development;IDE;
Name[en]=Eclipse" >> "/usr/share/applications/eclipse.desktop"'
rm "$FILE"

success "$NAME installed"
