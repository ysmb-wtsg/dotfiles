export XDG_CONFIG_HOME="$HOME/.config" # change lazygit config directory
export DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
export POETRY_ROOT="$HOME/.local/"
export ANDROID_HOME="/Users/user/Library/Android/sdk"
export LANG="en_us.UTF-8"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$POETRY_ROOT/bin:$PATH"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export PATH="$ANDROID_HOME/bin:$PATH"

DOCKER_SOCKET_PATH="$XDG_CONFIG_HOME/colima/default/docker.sock"
export DOCKER_HOST="unix://$DOCKER_SOCKET_PATH"

if [ -f "$HOME/openai_api_key" ]; then
    export OPENAI_API_KEY=$(cat "$HOME/openai_api_key")
fi

if [ -f "$HOME/anthropic_api_key" ]; then
    export ANTHROPIC_API_KEY=$(cat "$HOME/anthropic_api_key")
fi
