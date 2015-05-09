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
  brew upgrade --all
fi

# Install homebrew packages
brew install grc coreutils spark python python3 ack autojump nmap postgresql redis solr thefuck wget git bash-completion hub gettext aircrack-ng
brew link gettext --force

# Cleanup
brew cleanup

exit 0
