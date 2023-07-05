setopt auto_cd

export PATH=/opt/homebrew/bin:$PATH
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# for git comfort
source ~/.git-prompt.sh
fpath=(~ $fpath)
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
autoload -Uz compinit && compinit
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f\$ '


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
