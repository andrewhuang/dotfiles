export EDITOR=vim
export CLICOLOR=1

alias startvm='cd ~/repos/localdev && vagrant up && vagrant ssh'
alias git-root='cd $(git rev-parse --show-toplevel)'
alias l='ls'
alias la='ls -la'

source ~/repos/bash-powerline/bash-powerline.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
