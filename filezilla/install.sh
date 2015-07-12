#!/bin/bash

source ./bootstrap.sh

NAME="Filezilla"
URL="http://sourceforge.net/projects/filezilla/files/FileZilla_Client/3.10.3/FileZilla_3.10.3_x86_64-linux-gnu.tar.bz2"
FILE="filezilla.tar.bz2"

info "Installing $NAME"

if test ! "$(which filezilla)"; then
  download_source "$URL" "$FILE"
  extract_bz2 "$FILE" "/opt/"
  sudo mv /opt/FileZilla*/ /opt/filezilla
  sudo ln -sf /opt/filezilla/bin/filezilla /usr/bin/filezilla
  sudo sh -c 'echo "[Desktop Entry]
  Name=FileZilla
  GenericName=Cliente FTP
  Comment=Download e upload de arquivos via FTP, FTPS e SFTP
  Exec=/opt/filezilla/bin/filezilla
  Terminal=false
  Icon=/opt/filezilla/share/icons/hicolor/scalable/apps/filezilla.svg
  Type=Application
  Categories=Network;FileTransfer;
  Version=1.0" >> "/usr/share/applications/filezilla.desktop"'
  rm "$FILE"
fi

success "$NAME installed"