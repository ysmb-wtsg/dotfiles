cdls ()
{
\cd "$@" && ls --color=auto
}

tc_md() {
    if [[ "$1" == *"/"* ]]; then
        mkdir -p "$1"
    else
        touch "$1"
    fi
}

alias .z='. ~/.zshrc'
alias av='activate .vnev/bin/activate'
alias b='brew'
alias bi='brew install'
alias bic='brew install --cask'
alias bl='brew list'
alias bs='brew search'
alias bu='brew uninstall'
alias c='carbonyl'
alias cd="cdls"
alias d='docker'
alias dc='docker-compose'
alias dcd='docker-compose down'
alias dcu='docker-compose up'
alias di='docker images'
alias dp='docker ps'
alias dr='docker rm'
alias dri='docker rmi'
alias dv='deactivate'
alias e='exit'
alias g='git'
alias lg='lazygit'
alias md='mkdir -p'
alias nv='nvim'
alias nvgc='nv ~/.gitconfig'
alias nvnv='nvim ~/.config/nvim'
alias nvzr='nv ~/.zshrc'
alias o='open'
alias pe='pyenv'
alias pp='pip'
alias py='python'
alias rm='rm -r'
alias sshkg='ssh-keygen'
alias t='tmux'
alias tc='tc_md'
alias tk='tmux kill-server'
alias ve='python -m venv'
