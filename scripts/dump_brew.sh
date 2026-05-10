#!/bin/bash -e

DOTFILES_PATH="${DOTFILES_PATH:-$HOME/dotfiles}"
brew list --formulae >"$DOTFILES_PATH/etc/brew_formulae"
brew list --cask >"$DOTFILES_PATH/etc/brew_cask"

echo ""
echo " ✅  Brew packages dumped"
echo ""
