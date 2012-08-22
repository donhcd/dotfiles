#!/bin/bash
# .bash_profile
#
# Get the aliases and functions from .bashrc
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

export LD_LIBRARY_PATH=${HOME}/local/lib/:${LD_LIBRARY_PATH}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
