#!/usr/bin bash

cd ~/dotfiles
for dotfile in .??*; do
	[[ $dotfile == ".git" ]] && continue
	[[ $dotfile == ".gitconfig.local" ]] && continue
	[[ $dotfile == ".gitignore" ]] && continue
	ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
done

ln -snfv "$(pwd)/_git" "$HOME/_git"

# keybinds for vscode
vsc_keybindings="keybindings.json"
# for windows
ln -snfv "${PWD%/*}/etc/$vsc_keybindings" "$HOME/AppData/Roaming/Code/User/$vsc_keybindings"
# for mac
ln -snfv "${PWD%/*}/etc/$vsc_keybindings" "$HOME/Library/Application Support/Code/User/$vsc_keybindings"

# iterm config
cp -f iTerm2/com.googlecode.iterm2.plist ~/Library/Preferences

# starship config
ln -snfv "${PWD%/*}/etc/starship.toml" "$HOME/.config/starship.toml"

echo "create link completed!!!!"
