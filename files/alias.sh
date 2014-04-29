alias ls='ls -F --color=always'
alias dir='dir -F --color=always'
alias lsa='ls -lha'
alias cp='cp -iv'
alias rm='rm -i'
alias mv='mv -iv'
alias grep='grep --color=auto -i'
alias vi='vim'
alias server1="ssh root@162.244.31.131"
alias server2="ssh root@93.188.163.163"
alias ifconfig="/sbin/ifconfig"
alias ..='cd ..'

alias chmod_files='find -maxdepth 10 -type f -exec chmod 644 {} \;'
alias chmod_folders='find -maxdepth 10 -type d -exec chmod 755 {} \;'