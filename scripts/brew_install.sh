#!/bin/bash -e

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
export PATH=/opt/homebrew/sbin:$PATH
export PATH=/opt/homebrew/bin:$PATH

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."

formulas=(
    awscli
    cask
    colima
    curl
    docker
    docker-compose
    git
    lazygit
    neovim
    node
    tree
    wget
    z
    zsh-completions
    zsh-autosuggestions
)

echo "brew tap..."
brew tap sanemat/font
brew tap homebrew/cask-fonts

echo "start brew install apps..."
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

casks=(
    font-hack-nerd-font
    google-chrome
    iterm2
    karabiner-elements
    raycast
    visual-studio-code
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    brew install $cask --cask
done

brew cleanup

cat << END

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END


