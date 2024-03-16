#!/bin/bash -e

DOTFILES_PATH=~/dotfiles
brew list --formulae > $DOTFILES_PATH/.brew_formulae
brew list --cask > $DOTFILES_PATH/.brew_cask
