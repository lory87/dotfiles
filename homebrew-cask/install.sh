#!/bin/sh
#
# Homebrew Cask

# Check for Brew Cask
if test ! $(which brew-cask.rb)
then
  echo "  Installing Homebrew Cask."
  brew install caskroom/cask/brew-cask
else
  echo "  Upgrading Homebrew Cask."
  brew upgrade brew-cask
fi

# Install Cask Apps
brew cask install 1password slate iterm2 flux appcleaner caffeine hipchat pycharm java6 skype google-chrome macdown dropbox google-drive sublime-text rowanj-gitx

brew cask cleanup

exit 0
