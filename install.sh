#!/bin/bash

source bootstrap.sh

is_linux

create_tmp_folder() {
  mkdir .tmp
}

remove_tmp_folder() {
  rm -R .tmp
}

main() {
  create_tmp_folder

  info "Installing dependencies"
  check_dependencies
  success "Dependencies installed"

  find . -name install.sh | while read installer ; do sh -c "${installer}" ; done

  remove_tmp_folder

  # Set unity defaults
  sh -c unity/set-defaults.sh

  echo ''
  echo 'All done, now your system will restart :)'
  sleep 5
  sudo reboot
}

main
