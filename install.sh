#!/bin/bash

source bootstrap.sh

is_linux

main () {
  info "Installing dependencies"
  check_dependencies
  success "Dependencies installed"

  find applications -name install.sh | while read installer ; do sh -c "${installer}" ; done  
}

main
