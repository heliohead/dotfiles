source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish

alias g 'git'
alias cl 'clear'
alias rs "rails server"
alias rp "bundle exec passenger start --min-instances 2 --max-pool-size 2"
alias rc "bin/rails console"
alias rt "bin/rails console test"
alias rbm "bin/rails db:migrate"
alias rbmt "bin/rails db:migrate RAILS_ENV=test"
alias be "bundle exec"
alias bp "bundle exec puma"
alias br "bundle exec rspec --fail-fast"
alias p192 "ping 192.168.0.1"
alias mvim "open -a MacVim.app $1"
alias google "open -a Google\ Chrome.app $1"
alias showFiles 'defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles 'defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias vi "vim -u NONE -U NONE -N"
alias rserver "ruby -run -e httpd . -p 8000"
alias l "ls -lha"
alias kill3000 "kill -9 (lsof -i:3000 -t)"
alias dt "bin/rails db:environment:set RAILS_ENV=test db:drop db:create db:migrate"
alias dtd "bin/rails db:environment:set RAILS_ENV=development db:drop db:create db:migrate"
alias pg_start "pg_ctl -D /usr/local/var/postgresql@9.6 start"
set -x EDITOR /usr/local/bin/vim
set -x WEB_CONCURRENCY 0
# set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
export LANG=C

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
# THEME PURE #
set fish_function_path /Users/imac/.config/fish/functions/theme-pure $fish_function_path
