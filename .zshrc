#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Tyler Christiansen <code@tylerc.me>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Exports
export WORKON_HOME="~/.virtualenvs"
export TERM="xterm-256color"
export EDITOR=vim

# Includes
if [[ -s "${HOME}/.local/bin/virtualenvwrapper.sh" ]]; then
  source ~/.local/bin/virtualenvwrapper.sh
fi
[[ -s "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"
if [[ -s /usr/local/share/gem_home/gem_home.sh ]]; then
  source /usr/local/share/gem_home/gem_home.sh
fi
[[ -s "${HOME}/.functions" ]] && source "${HOME}/.functions"

alias rm="nocorrect rm"
alias cp="nocorrect cp"
alias wip="nocorrect git commit -a -m WIP"
alias squish="nocorrect git status && git commit -a --amend -C HEAD"
