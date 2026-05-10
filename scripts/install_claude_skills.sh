#!/bin/bash -e

DOTFILES_PATH="${DOTFILES_PATH:-$HOME/dotfiles}"
SKILLS_LIST="$DOTFILES_PATH/etc/claude_skills"
SKILLS_DIR="$HOME/.claude/skills"

if [ ! -f "$SKILLS_LIST" ]; then
  echo "claude_skills not found: $SKILLS_LIST"
  exit 1
fi

mkdir -p "$SKILLS_DIR"

while IFS= read -r url; do
  [ -z "$url" ] && continue
  name=$(basename "$url" .git)
  if [ -d "$SKILLS_DIR/$name" ]; then
    echo "Already installed: $name"
  else
    echo "Installing $name..."
    git clone "$url" "$SKILLS_DIR/$name"
  fi
done <"$SKILLS_LIST"

echo ""
echo " ✅  Claude skills installed"
echo ""
