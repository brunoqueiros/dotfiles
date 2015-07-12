#!/bin/bash

source ./bootstrap.sh

NAME="Firefox Developer"
URL="https://download-installer.cdn.mozilla.net/pub/firefox/nightly/latest-mozilla-aurora/firefox-41.0a2.en-US.linux-x86_64.tar.bz2"
FILE="firefox-developer.tar.bz2"

info "Installing $NAME"

if test ! "$(which firefox-developer)"; then
  sudo rm -Rf /opt/firefox-developer*
  sudo rm -Rf /usr/bin/firefox-developer
  sudo rm -Rf /usr/share/applications/firefox-developer.desktop

  download_source "$URL" "$FILE"
  extract_bz2 "$FILE" "."
  sudo mv firefox /opt/firefox-developer
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
  rm "~/$FILE"
fi

success "$NAME installed"