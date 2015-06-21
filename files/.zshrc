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
