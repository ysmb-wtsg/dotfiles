#!/bin/bash -e

export DOTFILES_PATH="$(cd "$(dirname "$0")" && pwd)"

sh "$DOTFILES_PATH/scripts/install_brew.sh"
sh "$DOTFILES_PATH/scripts/create_symbolic_link.sh"
sh "$DOTFILES_PATH/scripts/install_vsc_extensions.sh"
sh "$DOTFILES_PATH/scripts/install_claude_skills.sh"

echo ""
echo " ✨  Dotfiles setup complete"
echo ""
