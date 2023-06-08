setopt auto_cd

export PATH=/opt/homebrew/bin:$PATH
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias b='brew'
alias bi='brew install'
alias bic='brew install --cask'
alias bls='brew list'
alias bs='brew search'
alias bu='brew uninstall'
alias d='docker'
alias dc='docker-compose'
alias g='git'
alias lg='lazygit'
alias nv='nvim'
alias python='$(pyenv which python)'
alias py='python'
alias pip='$(pyenv which pip)'
alias pp='pip'
alias sshkg='ssh-keygen'
alias nvzr='nv ~/.zshrc'
alias nvgc='nv ~/.gitconfig'
alias .z='. ~/.zshrc'
