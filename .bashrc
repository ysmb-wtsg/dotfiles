
source ~/.pureline/pureline ~/.pureline.conf
source ~/.git-completion.bash

alias acmd='powershell -command "Start-Process -Verb runas cmd"'
alias g='git'
alias d='docker'
alias dc='docker-compose'
alias py='python'
alias ..='cd ..'
alias vimbr='vim ~/.bashrc'
alias vimgc='vim ~/.gitconfig'
alias vimvr='vim ~/.vimrc'
alias vimtr='vim ~/.tigrc'

function to_win_path() {
  path=${*}
  echo "$(readlink -f ${path} | sed -e 's@/@\\@g' -e 's@\\c\\@c:\\@g' | tr '\n' ' ')"
}

function tree() {
  dst="$(to_win_path ${1:-$(pwd)})"
  cmd //c "chcp 437 & tree ${dst}" //a //f
}

__git_complete g __git_main
