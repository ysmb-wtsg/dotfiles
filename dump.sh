#!/bin/bash -e

export DOTFILES_PATH="$(cd "$(dirname "$0")" && pwd)"

sh "$DOTFILES_PATH/scripts/dump_brew.sh"
sh "$DOTFILES_PATH/scripts/dump_vsc_extensions.sh"
sh "$DOTFILES_PATH/scripts/dump_claude_skills.sh"

echo ""
echo " ✨  Dotfiles dump complete"
echo ""
