#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias gr='cd $(git rev-parse --show-toplevel)'
alias l='ls --color=auto'
alias ls='ls --color=auto'
alias v=vim
alias open='xdg-open'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias disapproval="echo 'ಠ_ಠ' | pbcopy"

function goto() {
  cd  ~/code/src/*/*/$1
}

export PS1='[\u@\h \W]\$ '

export BROWSER=/usr/bin/chromium
export EDITOR=/usr/bin/vim

export GOPATH=~/code
export PATH="$PATH:$GOPATH/bin"
