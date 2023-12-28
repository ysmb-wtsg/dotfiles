LANG="en_US.UTF-8"
setopt auto_cd
set -o vi

if [ -f ".zsh_export" ]; then
    source .zsh_export
fi

if [ -f ".zsh_func" ]; then
    source .zsh_func
fi

if [ -f ".zsh_alias" ]; then
    source .zsh_alias
fi

if [ -f "openai_api_key" ]; then
    export OPENAI_API_KEY=$(cat "openai_api_key")
fi

if [ -f "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
    source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

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

eval "$(anyenv init -)"
eval "$(starship init zsh)"
