#!/bin/bash -e

DOTFILES_PATH="${DOTFILES_PATH:-$HOME/dotfiles}"
SKILLS_DIR="$HOME/.claude/skills"
OUTPUT="$DOTFILES_PATH/etc/claude_skills"

: > "$OUTPUT"

if [ ! -d "$SKILLS_DIR" ]; then
  echo "Skills directory not found: $SKILLS_DIR"
  exit 0
fi

for skill_dir in "$SKILLS_DIR"/*/; do
  [ -d "$skill_dir/.git" ] || continue
  url=$(git -C "$skill_dir" remote get-url origin 2>/dev/null)
  [ -n "$url" ] && echo "$url" >> "$OUTPUT"
done

echo ""
echo " ✅  Claude skills dumped"
echo ""
