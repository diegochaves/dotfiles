# ~/.zsh/base.sh: executed by .zshrc as basic configurations.
# Author: Diego Ferreira Chaves <dfchaves@gmail.com>
# Source: https://github.com/diegochaves/dotfiles/blob/master/.profile

source $HOME/.zsh/aliases.sh

setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell

# Theme Config

#SPACESHIP_CHAR_SYMBOL=❯
SPACESHIP_DIR_COLOR="081"

# Function to go directly to a sub folder on ~/Projects/ folder
go() { cd $HOME/Projects/$1; }
_go() { _files -W $HOME/Projects -/; }
compdef _go go

source $HOME/.zsh/antibody.sh
