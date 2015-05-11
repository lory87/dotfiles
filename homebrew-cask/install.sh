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
# Already installed: 1password hipchat pycharm java6 skype google-chrome dropbox google-drive sublime-text
brew cask install lunchy spectacle iterm2 flux appcleaner caffeine rowanj-gitx

brew cask cleanup

exit 0
