function dbpurge
  lsof -i tcp:3000 | grep 'nginx\|ruby' | awk '{print $2}' | xargs kill -9
  ps ax | grep spring | sed '/grep/d' | cut -f1 -d' ' | xargs kill
  echo "ruby was killed"

  if killall Postico
    echo "Postico was killed"
    set postico 'true'
  end

  rake db:drop
  echo "DB was droped"
  rake db:create
  rake db:migrate

  if count $argv > /dev/null
  else
    rake db:seed
  end

  if eval $postico
    open /Applications/Postico.app/
  end
end
