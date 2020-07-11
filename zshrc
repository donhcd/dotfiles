# ~/.zshrc
# vim:set et sw=2:

export ZSH_CACHE_DIR=$HOME/.zsh_cache
mkdir -p $ZSH_CACHE_DIR

## Options {{{1

setopt autocd extendedglob noclobber nonomatch rcquotes

setopt histexpiredupsfirst histignoredups histignorespace histreduceblanks
setopt inc_append_history share_history INTERACTIVE_COMMENTS

HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.history

## Keybindings {{{1

bindkey -r '^['
bindkey '^A' beginning-of-line
bindkey '^B' backward-char
bindkey '^D' delete-char-or-list
bindkey '^E' end-of-line
bindkey '^F' forward-char
bindkey '^K' kill-line
bindkey '^N' down-line-or-history
bindkey '^P' up-line-or-history
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^T' transpose-chars
bindkey '^Y' yank
bindkey '^[b' backward-word
bindkey '^[d' delete-word
bindkey '^[f' forward-word
bindkey ' ' magic-space
bindkey '^[^?' backward-delete-word

# bindkey -M isearch '^J' accept-search

# autoload -Uz url-quote-magic
# zle -N self-insert url-quote-magic

# autoload -Uz select-word-style
# select-word-style bash

change-first-word() {
  zle beginning-of-line -N
  zle kill-word
}
zle -N change-first-word
bindkey "\ea" change-first-word

bindkey "^XD" describe-key-briefly

fg-widget() {
  stty lnext '^V' quit '^\' susp '^Z' < /dev/tty
  zle reset-prompt
  if jobs %- >/dev/null 2>&1; then
    fg %-
  else
    fg
  fi
}
zle -N fg-widget
bindkey "^Z" fg-widget

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M emacs '^[e'  edit-command-line
bindkey '^X^E' edit-command-line
bindkey -M vicmd v      edit-command-line

unsetopt correct_all
setopt correct

#export PATH="/usr/local/opt/icu4c/bin:$PATH"
#export PATH="/usr/local/opt/icu4c/sbin:$PATH"

### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

# for nvm plugin
export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=true
  
#  zplugin ice wait'0' lucid; zplugin load zdharma/history-search-multi-word

zplugin ice wait"0" lucid blockf
zplugin ice wait'0' lucid; zplugin load zsh-users/zsh-completions

zplugin ice wait"0" lucid atload"_zsh_autosuggest_start"
zplugin ice wait'0' lucid; zplugin load zsh-users/zsh-autosuggestions
#  
zplugin snippet OMZ::lib/git.zsh
zplugin snippet OMZ::plugins/git/git.plugin.zsh
#  
#  GEOMETRY_COLOR_DIR=152
#  zplugin light geometry-zsh/geometry
#  zplugin ice wait"0" lucid atload"prompt_geometry_render"
#  
#  zplugin ice wait"0" lucid as"program" pick"bin/git-dsf"
#  zplugin light zdharma/zsh-diff-so-fancy
#  zplugin ice wait"0" lucid as"program" pick"$ZPFX/bin/git-now" make"prefix=$ZPFX install"
#  zplugin ice wait"0" lucid iwata/git-now
#  zplugin ice wait"0" lucid as"program" pick"$ZPFX/bin/git-alias" make"PREFIX=$ZPFX" nocompile
zplugin ice wait"0" lucid tj/git-extras
#  zplugin ice wait"0" lucid as"program" atclone'perl Makefile.PL PREFIX=$ZPFX' atpull'%atclone' \
#              make'install' pick"$ZPFX/bin/git-cal"
#  zplugin ice wait"0" lucid k4rthik/git-cal
#  
#  zplugin ice wait"0" lucid svn; zplugin snippet OMZ::plugins/brew
#  zplugin ice wait"0" lucid svn pick"nvm.plugin.zsh"; zplugin snippet OMZ::plugins/nvm
zplugin light lukechilds/zsh-nvm
#  zplugin ice wait"0" lucid svn; zplugin snippet OMZ::plugins/node
zplugin ice wait"0" lucid svn; zplugin snippet OMZ::plugins/tmuxinator

zplugin ice wait"0" lucid svn; zplugin snippet OMZ::plugins/kubectl

# this should be the last
zplugin ice wait"0" lucid atinit"zpcompinit; zpcdreplay"
zplugin ice wait"0" atinit'zpcompinit' lucid; zplugin load zdharma/fast-syntax-highlighting

export ENV="$HOME/.shrc"
interactive=1
. "$ENV"
unset interactive

echo -e "$(fortune -e -s | fmt -80 -s | cowsay -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n)\n"

eval "$(starship init zsh)"
