#!/usr/bin bash

cd ~/dotfiles
for dotfile in .??*; do
	[[ $dotfile == ".git" ]] && continue
	[[ $dotfile == ".gitconfig.local" ]] && continue
	[[ $dotfile == ".gitignore" ]] && continue
	ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
done

vsc_keybindings="keybindings.json"
# for windows
ln -snfv "$(pwd)/$vsc_keybindings" "$HOME/AppData/Roaming/Code/User/$vsc_keybindings"
# for mac
ln -snfv "$(pwd)/$vsc_keybindings" "$HOME/Library/Application Support/Code/User/$vsc_keybindings"

echo "create link completed!!!!"
