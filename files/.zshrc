source "$HOME/.antigen/antigen.zsh"

antigen-use oh-my-zsh
antigen-bundle arialdomartini/oh-my-git
antigen theme arialdomartini/oh-my-git-themes arialdo-granzestyle

antigen-apply

alias rs='rails s'
alias cl='clear'

mkd(){
  mkdir $1 && cd $1
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
PS1="$PS1"'$([ -n "$TMUX"  ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
