#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "  Upgrading Homebrew."
  brew update
  echo "  Upgrading Homebrew packages."
  brew upgrade
fi

# Install homebrew packages
brew install grc coreutils spark
# Cleanup
brew cleanup

exit 0
