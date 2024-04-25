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
vsc_keybindings="keybindings.json"
vsc_settings="settings.json"
# for windows
ln -snfv "$HOME/dotfiles/etc/$vsc_keybindings" "$HOME/AppData/Roaming/Code/User/$vsc_keybindings"
ln -snfv "$HOME/dotfiles/etc/$vsc_settings" "$HOME/AppData/Roaming/Code/User/$vsc_settings"
# for mac
ln -snfv "$HOME/dotfiles/etc/$vsc_keybindings" "$HOME/Library/Application Support/Code/User/$vsc_keybindings"
ln -snfv "$HOME/dotfiles/etc/$vsc_settings" "$HOME/Library/Application Support/Code/User/$vsc_settings"

# starship config
ln -snfv "$HOME/dotfiles/etc/starship.toml" "$HOME/.config/starship.toml"

echo "create link completed!!!!"
