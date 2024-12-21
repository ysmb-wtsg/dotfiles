#!/bin/bash -e

echo "brew tap..."
brew tap sanemat/font
brew tap homebrew/cask-fonts

DOTFILES_PATH="$HOME/dotfiles"
FORMULAE_LIST=$DOTFILES_PATH/ect/brew_formulae
CASK_LIST=$DOTFILES_PATH/etc/brew_cask

if [ ! -f "$FORMULAE_LIST" ]; then
  echo "brew_formulae not found: $FORMULAE_LIST"
  exit 1
fi

if [ ! -f "$CASK_LIST" ]; then
  echo "brew_cask not found: $CASK_LIST"
  exit 1
fi

while IFS= read -r package; do
  echo "Installing $package..."
  brew install "$package"
done <"$FORMULAE_LIST"

while IFS= read -r package; do
  echo "Installing $package..."
  brew install --cask "$package"
done <"$CASK_LIST"

brew cleanup

cat <<END

**************************************************
!!!!!!!!!!!!!!BREW PACKAGES INSTALLED!!!!!!!!!!!!!
**************************************************

END
