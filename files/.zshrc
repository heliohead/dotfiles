# load zgen
source "${HOME}/.zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
  echo "Creating a zgen save"

  zgen oh-my-zsh

  # plugins
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/sudo
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/thefuck
  zgen oh-my-zsh plugins/history-substring-search
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load arialdomartini/oh-my-git
  # completions
  zgen load zsh-users/zsh-completions src

  # theme
  zgen oh-my-zsh themes/helio

  # save all to init script
  zgen save
fi

source "${HOME}/.zgen/arialdomartini/oh-my-git-master/prompt.sh"

alias rs='rails s'
alias cl='clear'

mkd(){
  mkdir $1 && cd $1
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

PS1="$PS1"'$([ -n "$TMUX"  ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0  ]]; then
  BUFFER="fg"
  zle accept-line
  else
  zle push-input
  zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

export NVM_DIR=~/.nvm

source $(brew --prefix nvm)/nvm.sh

alias vi='nvim'

#
# Set cursor to blue when in command mode.
#
# ZLE hook docs:
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Special-Widgets
#
set_cursor_color() {
  # Plain iTerm2, no tmux
  if [[ -n $ITERM_SESSION_ID ]] && [[ -z $TMUX ]]; then
    printf '\033]Pl%s\033\\' "${1#\#}"
  else  # Plain xterm or tmux, sequence is the same
    printf '\033]12;%s\007' "$1"
  fi
}

# Taken from solarized colors
export cmdcolor="#268bd2"
export inscolor="#93a1a1"

zle-keymap-select() {
  if [[ $KEYMAP == vicmd ]]; then
    set_cursor_color $cmdcolor
  else
    set_cursor_color $inscolor
  fi
}

zle-line-finish() { set_cursor_color $inscolor }
zle-line-init() { zle -K viins ; set_cursor_color $inscolor }

zle -N zle-keymap-select
zle -N zle-line-finish
zle -N zle-line-init
