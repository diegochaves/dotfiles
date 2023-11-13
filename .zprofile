if [[ "$OSTYPE" == "darwin"* ]]; then
    export HOMEBREW_NO_ANALYTICS=1
    export HOMEBREW_NO_ENV_HINT=1
    export HOMEBREW_NO_INSTALL_FROM_API=1
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi