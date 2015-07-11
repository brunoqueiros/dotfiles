#!/bin/bash

source ./bootstrap.sh

NAME="VLC"

info "Installing $NAME"

if test ! "$(which vlc)"; then
	add_repo "ppa:videolan/stable-daily"
	update
	install "vlc"
fi

success "$NAME installed"