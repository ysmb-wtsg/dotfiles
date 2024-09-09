#!/usr/bin/bash -e

DOTFILES_PATH="$HOME/dotfiles"

cd "$DOTFILES_PATH" || exit
for dotfile in .??*; do
  [[ $dotfile == ".git" ]] && continue
  [[ $dotfile == ".gitignore" ]] && continue
  [[ $dotfile == ".DS_Store" ]] && continue
  ln -snfv "$DOTFILES_PATH/$dotfile" "$HOME/$dotfile"
done

ln -snfv "$DOTFILES_PATH/_git" "$HOME/_git"

# keybinds & settings for vscode
path_to_vsc_configs=$HOME/AppData/Roaming/Code/User
# for windows
if [ -d "$path_to_vsc_configs" ]; then
  ln -snfv "$DOTFILES_PATH/etc/keybindings.json" "$HOME/AppData/Roaming/Code/User/keybindings.json"
  ln -snfv "$DOTFILES_PATH/etc/settings.json" "$HOME/AppData/Roaming/Code/User/settings.json"
else
  # for mac
  ln -snfv "$DOTFILES_PATH/etc/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"
  ln -snfv "$DOTFILES_PATH/etc/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
fi

# starship config
ln -snfv "$DOTFILES_PATH/etc/starship.toml" "$HOME/.config/starship.toml"

# lazygit
ln -snfv "$DOTFILES_PATH/.config/lazygit/config.yml" "$HOME/.config/lazygit/config.yml"

cat <<END

**************************************************
!!!!!!!!!!!!!!SYMBOLIC LINK CREATED!!!!!!!!!!!!!!!
**************************************************

END
