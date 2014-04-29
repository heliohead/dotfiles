black=$(tput -Txterm setaf 0)
red=$(tput -Txterm setaf 1)
green=$(tput -Txterm setaf 2)
yellow=$(tput -Txterm setaf 3)
dk_blue=$(tput -Txterm setaf 4)
pink=$(tput -Txterm setaf 5)
lt_blue=$(tput -Txterm setaf 6)

bold=$(tput -Txterm bold)
reset=$(tput -Txterm sgr0)

export PS1='\n\[$bold\]\[$black\][\[$pink\]\@\[$black\]]-[\[$lt_blue\]\u\[$black\]@\[$dk_blue\]\h\[$black\]]-[\[$yellow\]\w\[$black\]]\[\033[0;33m\]$(__vcs_name) \[\033[00m\]\[$reset\]\n\[$reset\]\$ '