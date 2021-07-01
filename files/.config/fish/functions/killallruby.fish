function killallruby
  lsof -i tcp:3000 | grep ruby | awk '{print $2}' | xargs kill -9
  kill -9 (lsof -i:3000 -t)
  ps ax | grep spring | sed '/grep/d' | cut -f1 -d' ' | xargs kill
  ps aux | grep -ie ruby | awk '{print $2}' | xargs kill
  echo "ruby was killed"
end
