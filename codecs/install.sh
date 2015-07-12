#!/bin/bash

source ./bootstrap.sh

NAME="Codecs"

info "Installing $NAME"

install "ubuntu-restricted-extras libavcodec-extra libav-tools"

success "$NAME installed"