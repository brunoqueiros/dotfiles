#!/bin/bash

source bootstrap.sh

is_linux

main () {
  info "Installing dependencies"
  check_dependencies
  success "Dependencies installed"

  find . -name install.sh | while read installer ; do sh -c "${installer}" ; done
}

main
