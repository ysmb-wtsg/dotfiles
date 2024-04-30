#!/usr/bin bash

cd ~/dotfiles
for dotfile in .??*; do
	[[ $dotfile == ".git" ]] && continue
	[[ $dotfile == ".gitignore" ]] && continue
	[[ $dotfile == ".DS_Store" ]] && continue
	ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
done

ln -snfv "$(pwd)/_git" "$HOME/_git"

# keybinds & settings for vscode
path_to_vsc_configs="$HOME/AppData/Roaming/Code/User"
# for windows
if [ -d $path_to_vsc_configs ]; then
  ln -snfv "$HOME/dotfiles/etc/keybindngs.json" "$HOME/AppData/Roaming/Code/User/keybindings.json"
  ln -snfv "$HOME/dotfiles/etc/settings.json" "$HOME/AppData/Roaming/Code/User/settings.json"
else
  # for mac
  ln -snfv "$HOME/dotfiles/etc/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"
  ln -snfv "$HOME/dotfiles/etc/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
fi

# starship config
ln -snfv "$HOME/dotfiles/etc/starship.toml" "$HOME/.config/starship.toml"

cat << END

**************************************************
!!!!!!!!!!!!!!SYMBOLIC LINK CREATED!!!!!!!!!!!!!!!
**************************************************

END
