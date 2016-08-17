#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
if test ! $(which brew); then
brew update && echo "Homebrew updated"
fi

# install cool stuff first
brew install git && echo "Git installed"

if test ! $(which figlet); then
  brew install figlet
fi
if test ! $(which toilet); then
  brew install toilet
fi

clear
toilet -f future Memorysaver Installation --filter metal
toilet -f future _______________________ --filter metal

# My dotfiles
if [ ! -d "$HOME/.dotfiles" ]; then
  git clone git://github.com/memorysaver/dotfiles.git
fi

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file=$HOME/.dotfiles/macOS/Brewfile

# Solarized terminal theme
if [ ! -d "$HOME/solarized" ]; then
  git clone git://github.com/altercation/solarized.git ~/solarized
fi

# macOS config
toilet -f future mac configuration --filter gay
toilet -f future ________________ --filter gay
source $HOME/.dotfiles/macOS/.macOS

if [ ! -d "$HOME/.dotfiles" ]; then
  echo "No dotfiles available. Aborting."
else
  # generate ssh-keygen
  if [ ! -f "$HOME/.ssh/id_rsa" ]; then
    ssh-keygen -t rsa -C "mfa1484@gmail.com"
  fi

  # Symlinks
  ln -sfv "$HOME/.dotfiles/mackup/.mackup.cfg" ~
  ln -sfv "$HOME/.dotfiles/.hammerspoon" ~
  ln -sfv "$HOME/.dotfiles/git/.gitconfig" ~
  ln -sfv "$HOME/.dotfiles/git/.gitignore_global" ~
  ln -sfv "$HOME/.dotfiles/git/.gitmessage" ~

  # install oh-my-zsh
  if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(nohup curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh &)" && echo "ZSH installed"
  fi

fi
