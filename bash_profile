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
alias ss='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine > /dev/null'

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
complete -o default -o nospace -F _git g
alias ga="git add"
complete -o default -o nospace -F _git_add ga
alias gap="ga -p"
alias gpr="git pull --rebase"
alias gl="git log"
alias grc='git rebase --continue'
alias gra='git rebase --abort'

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
complete -o default -o nospace -F _git_checkout gc
alias gcm="git checkout master"
alias gcb="git checkout -b"

alias gci="git commit -i"
alias gca="git commit -a"
alias gcam="git commit -a -m"
alias gcaa="git commit -a --amend"
alias gcamw="git commit -a -m working"

alias gms="git merge --squash"
alias grh="git reset --hard"
alias grhh="git reset --hard HEAD"
alias gsf="git svn fetch; git svn rebase; arc build"
alias glm="git log --author=$USER"

# Added via '/Users/donhuang/android-scripts/Installers/Install Android SDK.command' at Mon Jul  9 11:02:59 PDT 2012
export ANDROID_SDK_HOME='/Users/donhuang/local/Android/android-sdk-macosx'
export PATH="$ANDROID_SDK_HOME/tools:$PATH"
export PATH="$ANDROID_SDK_HOME/platform-tools:$PATH"
# Mon Jul  9 11:02:59 PDT 2012

export NDK_MODULE_PATH='/Users/donhuang/local/Android/android-ndk-r8'
export PATH="$NDK_MODULE_PATH:$PATH"
