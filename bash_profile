export EDITOR=vim
export CLICOLOR=1

alias git-root='cd $(git rev-parse --show-toplevel)'
alias l='ls'
alias la='ls -la'
alias v='vim'

#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#  . $(brew --prefix)/etc/bash_completion
#fi

source ~/repos/bash-powerline/bash-powerline.sh
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
