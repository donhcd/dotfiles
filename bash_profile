#!/bin/bash
# .bash_profile
#
# Get the aliases and functions from .bashrc
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# unix nav
alias ..='cd ..'
alias ...='cd ../..'
alias ls="ls -G"
alias ll="ls -l"
alias la='ls -al'
alias pd="pushd"
alias po="popd"

export EDITOR=vim
export LS_COLORS="${LS_COLORS}:di=01;33"

# unix session
alias scr="screen -d -r"
alias f='find . -name'

# screensaver!
alias ss='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine'

#. ~/.bash/tags-completion.bash
alias vt='vim -t' # useful alias
alias v='vim'

export SETTINGS_DIR=~/settings
alias vb="v $SETTINGS_DIR/bashrc"
alias sb=". ~/.bashrc"
alias vbp="v $SETTINGS_DIR/bash_profile"
alias sbp="source ~/.bash_profile"
# svn
alias sup="svn up"
alias st="svn stat"
alias stq="svn stat -q"
alias sd="svn diff"

#git 
alias g='git'
alias ga="git add"
alias gpr="git pull --rebase"
alias gl="git log"

alias gd="git diff"
alias gdh="gd HEAD"
alias gdhu="gdh -U9999"
alias gdm="gd master"
alias gdmu="gdm -U9999"

alias gs="git status"

alias gf='git fetch'
alias ad='arc diff'
alias adp='arc diff --preview'

alias gsh='git show'

alias gu='git fetch; git svn rebase; arc build'
alias gr='git rebase -i HEAD~3'

alias gcp='git cherry-pick'
alias gst='git stash'
alias gsp='git stash pop'
alias gs='g status'
alias gcl='git clean -fdx'
alias gmt='g mergetool'
alias gdt='g difftool'

alias gb="git branch"
alias gbd='gb -D'
alias gc="git checkout"
alias gcm="git checkout master"
alias gcb="git checkout -b"

alias gcp="git commit -p"
alias gca="git commit -a"
alias gcam="git commit -a -m"
alias gcaa="git commit -a --amend"
alias gcamw="git commit -a -m working"

alias gms="git merge --squash"
alias grh="git reset HEAD"
alias grhh="git reset --hard HEAD"
alias gsf="git svn fetch; git svn rebase; arc build"
alias glm="git log --author=$USER"
