#!/usr/bin/env bash

for dotfile in .??*; do
	[[ $dotfile == ".git" ]] && continue
	[[ $dotfile == ".gitconfig.local" ]] && continue
	[[ $dotfile == ".gitignore" ]] && continue
	ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
done

vsc_keybindings="keybindings.json"
ln -snfv "$(pwd)/$vsc_keybindings" "$HOME/AppData/Roaming/Code/User/$vsc_keybindings"

echo "create link completed!!!!"
