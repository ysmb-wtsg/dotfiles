#!/bin/bash -e

DOTFILES_PATH=~/dotfiles
EXTENSION_LIST="$DOTFILES_PATH/etc/vsc_extensions"

if [ ! -f "$EXTENSION_LIST" ]; then
    echo "vsc_extensions not found: $EXTENSION_LIST"
    exit 1
fi

while IFS= read -r extension; do
    code --install-extension "$extension" --force
done < "$EXTENSION_LIST"

cat << END

**************************************************
!!!!!!!!!!!!VSC EXTENSIONS INSTALLED!!!!!!!!!!!!!!
**************************************************

END
