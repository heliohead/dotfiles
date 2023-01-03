alias foo "bar"
alias e 'nvim'
alias g 'git'
alias cl 'clear'
alias rs "bin/rails server"
alias ms "iex -S mix phx.server"
alias ie "iex -S mix"
alias rp "bundle exec passenger start --min-instances 2 --max-pool-size 2"
alias rc "bin/rails console"
alias rt "bin/rails console test"
alias rbm "bin/rails db:migrate"
alias rbmt "bin/rails db:migrate RAILS_ENV=test"
alias be "bundle exec"
alias bp "bundle exec puma"
alias br "bundle exec rspec --fail-fast"
alias p192 "ping 192.168.0.1"
alias rn "react-native run-ios --simulator='iPhone 5s'"
alias showFiles 'defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles 'defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias brewski='brew update and brew upgrade --all and brew cleanup; brew doctor'
alias vi "vim -u NONE -U NONE -N"
alias rserver "ruby -run -e httpd . -p 8000"
alias pg-up "pg_ctl -D /usr/local/var/postgres -l logfile start"
alias pg-down "pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias l "ls -lha"
alias kill3000 "kill -9 (lsof -i:3000 -t)"
alias dt "bin/rails db:environment:set RAILS_ENV=test db:drop db:create db:migrate"
alias dtd "bin/rails db:environment:set RAILS_ENV=development db:drop db:create db:migrate"
alias dtp "bin/rails db:test:prepare"
set -x EDITOR /usr/local/bin/vim
set -x WEB_CONCURRENCY 0
set -x ERL_AFLAGS "-kernel shell_history enabled"
# set -x RUBYOPT '-W:no-deprecated'
# set -x RUBY_CONFIGURE_OPTS "--with-openssl-dir=/opt/homebrew/opt/openssl@1.1"
export LANG=C
set -x LANG en_US.UTF-8

set PATH /Library/Frameworks/Python.framework/Versions/3.9/bin $PATH

fish_add_path /opt/homebrew/bin
fish_add_path /usr/local/opt/openjdk/bin
fish_add_path ~/.goaws

function google
  open -a "Google Chrome" $argv
end

function goo
  /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=55171&
end

function andr
 /Volumes/HDD/Users/helio/Library/Android/sdk/emulator/emulator -avd Nexus_5X_API_27_x86 &
end

function yarn
  env NODE_OPTIONS=--no-deprecation yarn $argv
end

function remon
  killall DisplayLinkUserAgent
  sleep 1
  open -a "/Applications/DisplayLink Manager.app"
end

function mamp-of
  brew services stop mysql
  # brew services stop php@7.4
  # brew services stop httpd
end

function mamp-on
  brew services start mysql
  # brew services start php@7.4
  # brew services start httpd
end

source /opt/homebrew/opt/asdf/libexec/asdf.fish

if test (arch) = "i386"
  set HOMEBREW_PREFIX /usr/local
else
  set HOMEBREW_PREFIX /opt/homebrew
end

# Add the Homebrew prefix to $PATH. -m flag ensures it's at the beginning
# of the path since the path might already be in $PATH (just not at the start)
fish_add_path -m --path $HOMEBREW_PREFIX/bin

alias intel 'arch -x86_64 /usr/local/bin/fish'

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/opt/homebrew/opt/openssl@1.1"
