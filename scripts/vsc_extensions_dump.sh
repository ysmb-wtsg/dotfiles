#!/bin/bash -e

DOTFILES_PATH=~/dotfiles
code --list-extensions > $DOTFILES_PATH/etc/vsc_extensions

cat << END

**************************************************
!!!!!!!!!!!!!!!VSC EXTENSIONS DUMPED!!!!!!!!!!!!!!
**************************************************

END
