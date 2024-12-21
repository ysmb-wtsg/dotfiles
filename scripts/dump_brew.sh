#!/bin/bash -e

DOTFILES_PATH="$HOME/dotfiles"
brew list --formulae >"$DOTFILES_PATH/etc/brew_formulae"
brew list --cask >"$DOTFILES_PATH/etc/brew_cask"

cat <<END

**************************************************
!!!!!!!!!!!!!!!BREW PACKAGES DUMPED!!!!!!!!!!!!!!!
**************************************************

END
