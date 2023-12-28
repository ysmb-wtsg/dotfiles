#!/usr/bin bash

cd ~/dotfiles
for dotfile in .??*; do
	[[ $dotfile == ".git" ]] && continue
	[[ $dotfile == ".gitignore" ]] && continue
	[[ $dotfile == ".DS_Store" ]] && continue
	ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
done

ln -snfv "$(pwd)/_git" "$HOME/_git"

# keybinds for vscode
vsc_keybindings="keybindings.json"
# for windows
ln -snfv "$HOME/dotfiles/etc/$vsc_keybindings" "$HOME/AppData/Roaming/Code/User/$vsc_keybindings"
# for mac
ln -snfv "$HOME/dotfiles/etc/$vsc_keybindings" "$HOME/Library/Application Support/Code/User/$vsc_keybindings"

# iterm config
cp -f "$HOME/dotfiles/etc/com.googlecode.iterm2.plist" ~/Library/Preferences

# starship config
ln -snfv "$HOME/dotfiles/etc/starship.toml" "$HOME/.config/starship.toml"

echo "create link completed!!!!"
