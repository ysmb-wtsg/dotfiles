export DOCKER_HOST="unix://$XDG_CONFIG_HOME/colima/default/docker.sock"
export LANG="en_us.UTF-8"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$POETRY_ROOT/bin:$PATH"
export POETRY_ROOT="$HOME/.local/"
export PYENV_ROOT="$HOME/.pyenv"
export XDG_CONFIG_HOME="$HOME/.config" # change lazygit config directory

if [ -f "$HOME/openai_api_key" ]; then
    export OPENAI_API_KEY=$(cat "$HOME/openai_api_key")
fi

if [ -f "/opt/homebrew/opt/asdf/libexec/asdf.sh" ]; then
    source /opt/homebrew/opt/asdf/libexec/asdf.sh
fi

if [ -f "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
    source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
