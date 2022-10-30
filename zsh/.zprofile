#!/bin/zsh

if [[ "${_SOURCED_PROFILE}" != 'yes' ]]; then
  emulate sh -c "source ${HOME}/.profile"
fi

export _SOURCED_ZSH_ZPROFILE='yes'

# Force PATH to be unique; the path array is tied to $PATH (typeset -t).
# shellcheck disable=SC2034
typeset -U path

# ydiff options
export YDIFF_OPTIONS='--side-by-side --color=always --width=0 --wrap'
export EDITOR='ec'

alias tadesk="ta desktop"
alias tsdesk="ts desktop"
alias talaptop="ta laptop"
alias tslaptop="ts laptop"
