#!/bin/bash

info() {
  printf "  [ \033[00;34m..\033[0m ] $1"
}

user() {
  printf "\r  [ \033[0;33m?\033[0m ] $1 "
}

success() {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail() {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

check_dependencies() {
  for pkg in zsh git curl python; do
    if test ! "$(which $pkg)"; then
      install $pkg
    fi
  done
}

is_linux() {
  [ "$(uname -s)" != "Linux" ] && fail "Only for Linux :("
}

add_repo() {
  sudo add-apt-repository -y $1 > /dev/null 2>&1
}

update() {
  sudo apt-get update > /dev/null 2>&1
}

install() {
  sudo apt-get install -y $1 > /dev/null 2>&1
}

add_key() {
  wget -q -O - $1 | sudo apt-key add - > /dev/null 2>&1
}