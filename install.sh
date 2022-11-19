#!/usr/bin/env bash
set -ue

for dotfile in .??*; do
	[[ $dotfile == ".git" ]] && continue
	[[ $dotfile == ".gitignore" ]] && continue
	ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
done
echo "create link completed!!!!"
