#!/bin/bash

source ./bootstrap.sh

NAME="Nvidia drivers"

info "Installing $NAME"

if test ! "$(which nvidia-settings)"; then
	add_repo "ppa:mamarley/nvidia"
	update
	install "nvidia-352 nvidia-settings"
fi

success "$NAME installed"