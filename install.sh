#!/usr/bin/env bash

clear
echo "============================================"
echo "     Memorysaver dotfiles Installation"
echo "============================================"

if [ "$(uname -s)" == "Darwin" ]; then
  # macOS
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/memorysaver/dotfiles/master/macOS/installer.sh)"
else
  echo "Sorry! other platforms are not implemented yet."
fi
