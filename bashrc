# .bashrc
# User specific aliases and functions
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

if [ -f /Users/donhuang/devtools/arcanist/resources/shell/bash-completion ]; then
        . /Users/donhuang/devtools/arcanist/resources/shell/bash-completion
fi

[ -f ~/.shrc ] && . ~/.shrc

if [ ! -z "$PS1" ]; then
  # ^p check for partial match in history
  bind -m vi-insert "\C-p":dynamic-complete-history
  # ^n cycle through the list of partial matches
  bind -m vi-insert "\C-n":menu-complete
  # ^l clear screen
  bind -m vi-insert "\C-l":clear-screen
  set -o vi
fi

. ~/.git-completion.sh
. ~/.django_bash_completion

export AWS_CREDENTIAL_FILE=~/local/aws_access_credentials.key
export ELASTICBEANSTALK_URL=elasticbeanstalk.us-west-2.amazonaws.com

export SVN_EDITOR=vim
export EDITOR=vim

# create TAGS
alias tagall='rm TAGS; find . -name "*.php" -o -name "*.phpt" -o -name "*.c" -o -name "*.cpp" -o -name "*.c++"  -o -name "*.h" -o -name "*.hpp" -o -name "*.py" -o -name "*.pl" -o -name "*.pm" -o -name "*.java" -o -name "*.thrift" | ctags -L -'
alias tagcpp='rm TAGS; find . -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" | ctags -L -'

# create cscope index
alias csgen='find . -type f -name "*.php" -o -name "*.phpt" -o -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp" -o -name "*.c++" -o -name "*.py" -o -name "*.pl" -o -name "*.pm" -o -name "*.java" -o -name "*.thrift" > cscope.files; rm cscope.in.out cscope.out cscope.po.out ; cscope -bq'

export PS1="\[\e[1;32m\][\u@\h\[\e[m\] \[\e[1;34m\]\W\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/{\[\e[1;33m\]\1\[\e[1;34m\]}\[\e[m\]/')\[\e[1;32m\]]\$\[\e[0m\] "

CLICOLOR=1
LSCOLORS=DxGxcxdxCxcgcdabagacad
export CLICOLOR LSCOLORS

ulimit -n 1024

export DEP_OPENSSL_INCLUDE=/usr/local/opt/openssl/include

# added by travis gem
[ -f /Users/don/.travis/travis.sh ] && source /Users/don/.travis/travis.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
