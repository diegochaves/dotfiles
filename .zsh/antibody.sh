# Antibody Load

# Check if antibody command exists
if ! [ -x "$(command -v antibody)" ]; then
    curl -sL git.io/antibody | sh -s #Download antibody if it isn't installed
fi

#Initialize Antibody
source <(antibody init)

#Load ZSH Plugins based on ~/.zsh/plugins.zsh file.
antibody bundle < $HOME/.zsh/plugins.zsh