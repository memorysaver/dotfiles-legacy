if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update && echo "Homebrew updated" || echo "Homebrew update failed"

# install cool stuff first
brew install git && echo "git installed"
brew install figlet && echo "figlet installed"
brew install toilet && echo "toilet installed"
clear
toilet -f future Memorysaver Installation --filter metal
toilet -f future _______________________ --filter metal

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file=$HOME/.dotfiles/macOS/Brewfile

# install oh-my-zsh
sh -c "$(nohup curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh &)" && echo "ZSH installed"

# generate ssh-keygen
if [ ! -f "$HOME/.ssh/id_rsa" ]; then
  ssh-keygen -t rsa -C "mfa1484@gmail.com"
fi

# Solarized terminal theme
if [ ! -d "$HOME/solarized" ]; then
  git clone git://github.com/altercation/solarized.git ~/solarized
fi

# macOS config
toilet -f future mac configuration --filter gay
toilet -f future ________________ --filter gay
source $HOME/.dotfiles/macOS/.macOS

# Symlinks
ln -sfv "$HOME/.dotfiles/mackup/.mackup.cfg" ~
ln -sfv "$HOME/.dotfiles/.hammerspoon" ~
ln -sfv "$HOME/.dotfiles/git/.gitconfig" ~
ln -sfv "$HOME/.dotfiles/git/.gitignore_global" ~
ln -sfv "$HOME/.dotfiles/git/.gitmessage" ~
