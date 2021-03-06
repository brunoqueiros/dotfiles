#!/bin/bash

source ./bootstrap.sh

NAME="Firefox Developer"
URL="https://download-installer.cdn.mozilla.net/pub/firefox/nightly/latest-mozilla-aurora-l10n/firefox-43.0a2.pt-BR.linux-x86_64.tar.bz2"
FILE=".tmp/firefox-developer.tar.bz2"

info "Installing $NAME"

if [ ! -f /usr/share/applications/firefox-developer.desktop ]; then
  sudo rm -Rf /opt/firefox-developer*
  sudo rm -Rf /usr/bin/firefox-developer
  sudo rm -Rf /usr/share/applications/firefox-developer.desktop

  download_source "$URL" "$FILE"
  extract_bz2 "$FILE" ".tmp/"
  sudo mv .tmp/firefox /opt/firefox-developer
  sudo ln -sf /opt/firefox-developer/firefox-bin /usr/bin/firefox-developer
  sudo sh -c 'echo "[Desktop Entry]
  Name=Firefox Developer
  GenericName=Firefox Developer Edition
  Exec=/opt/firefox-developer/firefox-bin
  Terminal=false
  Icon=/opt/firefox-developer/browser/icons/mozicon128.png
  Type=Application
  Categories=Application;Network;X-Developer;
  Comment=Firefox Developer Edition Web Browser." >> "/usr/share/applications/firefox-developer.desktop"'
  rm "$FILE"
fi

success "$NAME installed"
