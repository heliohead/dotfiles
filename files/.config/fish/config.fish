alias foo "bar"
alias e 'nvim'
alias g 'git'
alias cl 'clear'
alias rs "bin/rails server"
alias ms "mix phx.server"
alias mc "iex -S mix phx.server"
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
alias pg_start "/Users/helio/.asdf/installs/postgres/13.2/bin/pg_ctl -D /Users/helio/.asdf/installs/postgres/13.2/data -l logfile start"
alias l "ls -lha"
alias kill3000 "kill -9 (lsof -i:3000 -t)"
alias dt "bin/rails db:environment:set RAILS_ENV=test db:drop db:create db:migrate"
alias dtd "bin/rails db:environment:set RAILS_ENV=development db:drop db:create db:migrate"
alias dtp "bin/rails db:test:prepare"
set -x EDITOR /usr/local/bin/vim
set -x WEB_CONCURRENCY 0
set -x RAILS_ENV development
set -x SENDMAIL_USERNAME helioheadmail@gmail.com
set -x SENDMAIL_PASSWORD f5ZYsvpEM7bJMCH488nd4t
set -x ERL_AFLAGS "-kernel shell_history enabled"
set -x AWS_ACCESS_KEY_ID "UL66GRVILJ4ORSMMUUJO"
set -x AWS_SECRET_ACCESS_KEY "OppCidsLYBQN+0eVKUaxDoPwM1D+z8ar4P714SPZZR0"
# set -x RUBYOPT '-W:no-deprecated -W:no-experimental'
# set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
export LANG=C

set ANDROID_HOME /Volumes/HDD/Users/helio/Library/Android/sdk
set -gx PATH $PATH /Volumes/HDD/Users/helio/Library/Android/sdk
set -gx PATH $PATH /Volumes/HDD/Users/helio/.pub-cache/bin
set PATH /Volumes/HDD/Users/helio/flutter/bin $PATH
set PATH /Library/Frameworks/Python.framework/Versions/3.8/bin $PATH


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

source /usr/local/opt/asdf/asdf.fish
