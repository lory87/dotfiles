#!/bin/zsh

if test ! $(ls ${ZDOTDIR:-$HOME}/.zprezto)
then
  echo "  Installing Prezto."
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

  # Don't symlink default config files, were using our own in this directory
  # setopt EXTENDED_GLOB
  # for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  #   ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  # done
else
  echo "  Upgrading Prezto."
  # git submodule update does not work with the --git-dir attribute
  cd ${ZDOTDIR:-$HOME}/.zprezto/ && git pull && git submodule update --init --recursive && cd
fi
