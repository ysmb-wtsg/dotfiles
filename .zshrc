setopt auto_cd

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/opt/node@16/bin:$PATH
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
alias bl='brew list'
alias bs='brew search'
alias bu='brew uninstall'
alias d='docker'
alias dp='docker ps'
alias di='docker images'
alias dr='docker rm'
alias dri='docker rmi'
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias g='git'
alias lg='lazygit'
alias nv='nvim'
alias py='python'
alias pp='pip'
alias sshkg='ssh-keygen'
alias nvzr='nv ~/.zshrc'
alias nvgc='nv ~/.gitconfig'
alias .z='. ~/.zshrc'
