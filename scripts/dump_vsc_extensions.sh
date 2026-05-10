#!/bin/bash -e

DOTFILES_PATH="${DOTFILES_PATH:-$HOME/dotfiles}"
code --list-extensions >"$DOTFILES_PATH/etc/vsc_extensions"

echo ""
echo " ✅  VSCode extensions dumped"
echo ""
