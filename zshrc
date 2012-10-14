# ~/.zshrc
# vim:set et sw=2:

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="terminalparty"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby python autojump)

source $ZSH/oh-my-zsh.sh

# Environment {{{1

export ENV="$HOME/.shrc"
interactive=1
. "$ENV"
unset interactive

[ ! -f "$HOME/.rvm/scripts/rvm" ] || . "$HOME/.rvm/scripts/rvm"
[ ! -f "$HOME/.rbenv/bin/rbenv" ] || eval "$(rbenv init -|grep -v export.PATH)"

# }}}1
# Prompt {{{1

e=`echo -ne "\e"`

# Options {{{1

setopt rmstarsilent histignoredups
setopt noclobber nonomatch
setopt completeinword extendedglob
setopt autocd

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history
setopt inc_append_history
setopt share_history

if [[ $ZSH_VERSION == 3.<->* ]]; then
  which zmodload >&/dev/null && zmodload zsh/compctl
  compctl -c sudo
  compctl -c which
  compctl -g '*(-/)' + -g '.*(-/)' -v cd pushd rmdir
  compctl -k hosts -x 'p[2,-1]' -l '' -- rsh ssh
  return 0
fi

setopt histexpiredupsfirst histreduceblanks

fpath=($fpath ~/.zsh/functions ~/.zsh/functions.zwc ~/.rvm/scripts/zsh/Completion $HASHROCKET_DIR/dotmatrix/.zsh/functions)
watch=(notme)
PERIOD=3600
periodic() { rehash }

# }}}1
# Named directories {{{1

boxen=(matthew todd lucas gideon)
if [ -d "$HOME/friends" ]; then
  local host
  for host in $boxen; do
    [ "${host%.tpope.us}" != "$HOST" ] && family=($family $host)
    [ -d "$HOME/friends" ] && typeset ${host%.tpope.us}=$HOME/friends/${host%.tpope.us}
    : ~${host%.tpope.us}
  done
fi

friends=($boxen roxy)
unset host

if [ -n "$USERPROFILE" ] && which cygpath >/dev/null; then
  typeset home="`cygpath "$USERPROFILE"`"
  typeset docs="$home/My Documents"
  typeset desktop="`cygpath -D 2>/dev/null`"
  [ -n "$APPDATA" ] || APPDATA="$USERPROFILE/Application Data"
  typeset appdata="`cygpath "$APPDATA"`"
  : ~home ~docs ~desktop ~appdata
elif [ -d "$HOME/Documents" ]; then
  typeset docs="$HOME/Documents"
  : ~docs
fi

namedir() { export $1=$PWD; : ~$1 }

# }}}1
# Aliases {{{1

alias lsd='ls -ld *(-/DN)'
alias b='noglob sensible-browser'
autoload -Uz zmv
alias zmv='noglob zmv'
alias ru='noglob ru'

# which sudo >/dev/null && alias sudo='sudo ' # this makes $1 expand as an alias

autoload -Uz zrecompile

# }}}1
# Completion {{{1

zmodload -i zsh/complist
# The following lines were added by compinstall

zstyle -e ':completion:*' completer '
    if [[ $_last_try != "$HISTNO$BUFFER$CURSOR" ]]; then
      _last_try="$HISTNO$BUFFER$CURSOR"
      reply=(_complete _ignored:complete _prefix _complete:full _correct _approximate)
    else
      rehash
      reply=(_complete _ignored:complete _prefix _complete:full _correct _approximate)
    fi' #'
zstyle ':completion::prefix:*' completer _complete _ignored:complete
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' glob 1
zstyle ':completion::complete:*:(all-|)files' ignored-patterns '*\~'
zstyle ':completion::complete:*' ignore-parents parent pwd
zstyle ':completion::complete:rm::(all-|)files' ignored-patterns
# zstyle ':completion:*' group-name ''
zstyle ':completion:*' hosts localhost $friends tpope.dyndns.org
zstyle ':completion:*' urls http://tpo.pe/ http://www.google.com/ https://github.com/
zstyle ':completion:*' insert-unambiguous true
# NO NO NO!!! This makes things SLOW
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors no=00 fi=00 di=01\;34 pi=33 so=01\;35 bd=00\;35 cd=00\;34 or=00\;41 mi=00\;45 ex=01\;32
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' local localhost /var/www public_html
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}'
zstyle ':completion::full:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' '+r:|[._-/]=* r:|=* l:|[._-/]=* l:|=*'
zstyle -e ':completion:*' max-errors 'reply=( $(( ($#PREFIX+$#SUFFIX)/3 )) numeric )'
zstyle ':completion:*' menu select
zstyle ':completion:*:(xdvi|xpdf|gv|mpl):*' menu yes select
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' substitute 1
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' users tpope root $USER ${watch/notme/}
zstyle ':completion:*' verbose true
zstyle ':completion:*:rm:*' ignore-line yes
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit -u
# End of lines added by compinstall

compdef '_arguments "-dump[dump to stdout]" "-T[force console]" "-G[force gui]" :url:_webbrowser' b sensible-browser
compdef 'local expl; _description files expl "picture file"; _files "$expl[@]" -g "*.(#i)(png|gif|jpeg|jpg|tiff|tif|pbm|pgm|ppm|xbm|xpm|ras(|t)|tga|rle|rgb|bmp|pcx|fits|pm)(-.)"' feh
compdef '_arguments "1:command:(start stop force-stop restart reload force-reload status)" "2:service:_services"' runcontrol rc
compdef '_services' start stop restart reload force-reload rclink

# }}}1
# Mime {{{1

autoload -Uz zsh-mime-setup
zstyle ':mime:*' x-browsers sensible-browser
zstyle ':mime:*' tty-browsers sensible-browser
zstyle ':mime:*' mailcap ~/.mailcap

# }}}1
# Keybindings {{{1

bindkey -v
bindkey -r '^Q'

bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^B' backward-char
bindkey -M viins '^D' delete-char-or-list
bindkey -M viins '^E' end-of-line
bindkey -M viins '^F' forward-char
bindkey -M viins '^K' kill-line
bindkey -M viins '^N' down-line-or-history
bindkey -M viins '^P' up-line-or-history
bindkey -M viins '^R' history-incremental-search-backward
bindkey -M viins '^S' history-incremental-search-forward
bindkey -M viins '^T' transpose-chars
bindkey -M viins '^Y' yank

bindkey -M emacs '^X^[' vi-cmd-mode

bindkey -M emacs ' ' magic-space
bindkey -M viins ' ' magic-space

bindkey -M isearch '^J' accept-search

# [[ -z "$terminfo[kdch1]" ]] || bindkey -M emacs "$terminfo[kdch1]" delete-char
# [[ -z "$terminfo[khome]" ]] || bindkey -M emacs "$terminfo[khome]" beginning-of-line
# [[ -z "$terminfo[kend]"  ]] || bindkey -M emacs "$terminfo[kend]" end-of-line

autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

autoload -Uz select-word-style
select-word-style bash

change-first-word() {
  zle beginning-of-line -N
  zle kill-word
}
zle -N change-first-word
bindkey -M emacs "\ea" change-first-word

bindkey -M emacs "^XD" describe-key-briefly

fg-widget() {
  stty icanon echo -inlcr < /dev/tty
  stty lnext '^V' quit '^\' susp '^Z' < /dev/tty
  zle reset-prompt
  if jobs %- >/dev/null 2>&1; then
    fg %-
  else
    fg
  fi
}
zle -N fg-widget
bindkey -M emacs "^Z" fg-widget
bindkey -M vicmd "^Z" fg-widget
bindkey -M viins "^Z" fg-widget

autoload -Uz incarg
zle -N incarg
bindkey -M emacs "^X^A" incarg
bindkey -M vicmd "^A" incarg

bindkey -M vicmd ga what-cursor-position

new-screen() {
  [ -z "$STY" ] || screen < "$TTY"
}
zle -N new-screen
[[ -z "$terminfo[kf12]" ]] || bindkey "$terminfo[kf12]" new-screen
[[ -z "$terminfo[kf11]" ]] || bindkey -s "$terminfo[kf11]" "^Ascreen ^E\n"

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M emacs '^[e'  edit-command-line
bindkey -M emacs '^X^E' edit-command-line
bindkey -M vicmd v      edit-command-line

for binding in ${(f)$(bindkey -M emacs|grep '^"\^X')}; do
  bindkey -M viins "${(@Qz)binding}"
done
unset binding

bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^W' backward-delete-word
bindkey -M viins '^U' backward-kill-line
bindkey -M vicmd '^R' history-incremental-search-backward

fpath=(/Users/donhuang/local/zsh-completions/src $fpath)

# }}}1

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
