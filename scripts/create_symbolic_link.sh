#!/bin/bash -e

DOTFILES_PATH="${DOTFILES_PATH:-$HOME/dotfiles}"

cd "$DOTFILES_PATH" || exit
for dotfile in .??*; do
  [[ $dotfile == ".git" ]] && continue
  [[ $dotfile == ".gitignore" ]] && continue
  [[ $dotfile == ".DS_Store" ]] && continue
  [[ $dotfile == ".serena" ]] && continue
  [[ $dotfile == ".config" ]] && continue
  [[ $dotfile == ".claude" ]] && continue
  ln -snfv "$DOTFILES_PATH/$dotfile" "$HOME/$dotfile"
done

ln -snfv "$DOTFILES_PATH/_git" "$HOME/_git"

# .config 配下のアプリケーション設定を個別にリンク
mkdir -p "$HOME/.config"
for dir in "$DOTFILES_PATH/.config"/*/; do
  ln -snfv "$dir" "$HOME/.config/$(basename "$dir")"
done
ln -snfv "$DOTFILES_PATH/etc/starship.toml" "$HOME/.config/starship.toml"

# .claude 配下の設定ファイルを個別にリンク
mkdir -p "$HOME/.claude"
mkdir -p "$HOME/.claude/commands"
for file in "$DOTFILES_PATH/.claude"/*.{json,md}; do
  [ -f "$file" ] || continue
  name=$(basename "$file")
  [[ $name == "settings.local.json" ]] && continue
  ln -snfv "$file" "$HOME/.claude/$name"
done
for file in "$DOTFILES_PATH/.claude/commands"/*; do
  [ -f "$file" ] || continue
  ln -snfv "$file" "$HOME/.claude/commands/$(basename "$file")"
done

# VSCode
vsc_user_dir="$HOME/AppData/Roaming/Code/User"
if [ ! -d "$vsc_user_dir" ]; then
  vsc_user_dir="$HOME/Library/Application Support/Code/User"
fi
if [ -d "$vsc_user_dir" ]; then
  ln -snfv "$DOTFILES_PATH/etc/keybindings.json" "$vsc_user_dir/keybindings.json"
  ln -snfv "$DOTFILES_PATH/etc/settings.json" "$vsc_user_dir/settings.json"
else
  echo "VSCode User directory not found, skipping VSCode config links"
fi

echo ""
echo " ✅  Symbolic links created"
echo ""
