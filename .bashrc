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

alias .b='. ~/.bashrc'

__git_complete g __git_main
