#!/usr/bin/env bash

[[ -x `command -v wget` ]] && CMD="wget --no-check-certificate -O -"
[[ -x `command -v curl` ]] >/dev/null 2>&1 && CMD="curl -#L"

if [ -z "$CMD" ]; then
  echo "No curl or wget available. Aborting."
else
  clear
  echo "============================================"
  echo "     Memorysaver dotfiles Installation"
  echo "============================================"
  mkdir -p "$HOME/.dotfiles" && \
  eval "$CMD https://github.com/memorysaver/dotfiles/tarball/master | tar -xzv -C ~/.dotfiles --strip-components=1 --exclude='{.gitignore}'"

  if [ "$(uname -s)" == "Darwin" ]; then
    # macOS
    . "$HOME/.dotfiles/macOS/installer.sh"
  else
    echo "Sorry! other platforms are not implemented yet."
  fi
fi
