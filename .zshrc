setopt auto_cd
set -o vi

export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/opt/node@16/bin:$PATH
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export XDG_CONFIG_HOME="$HOME/.config" # change lazygit config directory
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export DOCKER_HOST="unix://$HOME/.colima/docker.sock"

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

alias md='mkdir -p'
alias tc='touch'
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
alias pe='pyenv'
alias pp='pip'
alias sshkg='ssh-keygen'
alias ve='python -m venv'
alias av='activate .vnev/bin/activate'
alias dv='deactivate'
alias nvzr='nv ~/.zshrc'
alias nvgc='nv ~/.gitconfig'
alias .z='. ~/.zshrc'

eval "$(pyenv init -)"
eval "$(starship init zsh)"
