# ~/.zshrc: zsh shell configuration file
# Author: Diego Ferreira Chaves <dfchaves@gmail.com>
# Source: https://github.com/diegochaves/dotfiles

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#VTE Configuration for Tilix Terminal Emulator
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

source ~/.config/zsh/base

#asdf Install
. "$HOME/.asdf/asdf.sh"
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# bun completions
[ -s "/home/diego.chaves/.bun/_bun" ] && source "/home/diego.chaves/.bun/_bun"
# bun configuration
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# starship install
eval "$(starship init zsh)"