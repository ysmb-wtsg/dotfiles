#!/bin/bash -e

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."

brew upgrade --all

formulas=(
    cask
    curl
    git
    lazygit
    neovim
    node
    tree
    wget
    z
    zsh-completions
)

"brew tap..."
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap sanemat/font

echo "start brew install apps..."
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
    google-chrome
    iterm2
    visual-studio-code
    font-hack-nerd-font
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    brew install $cask --cask
done

brew cleanup
brew cask cleanup

cat << END

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END


