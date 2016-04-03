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
export VISUAL=vim

# Includes
if [[ -s "${HOME}/.local/bin/virtualenvwrapper.sh" ]]; then
  source ~/.local/bin/virtualenvwrapper.sh
fi
[[ -s "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"
if [[ -s /usr/local/share/gem_home/gem_home.sh ]]; then
  source /usr/local/share/gem_home/gem_home.sh
fi
[[ -s "${HOME}/.rvm/scripts/rvm" ]] && source "${HOME}/.rvm/scripts/rvm"
[[ -s "${HOME}/.functions" ]] && source "${HOME}/.functions"
[[ -s "${HOME}/.secrets" ]] && source "${HOME}/.secrets"
[[ -s "${HOME}/.aliases" ]] && source "${HOME}/.aliases"

# Setup Docker on Mac
(( $+commands[docker-machine] )) && docker-machine start default
(( $+commands[docker-machine] )) && eval $(docker-machine env default)

# Add RVM to PATH for scripting
[[ -d "${HOME}/.rvm/bin" ]] && export PATH="$HOME/.rvm/bin:$PATH"
