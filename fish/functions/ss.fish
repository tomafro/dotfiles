function ss
  if test -e script/server
    ruby script/server $argv
  else if test -e script/rails
    ruby script/rails server $argv
  else if test -e bin/rails
    bin/rails server $argv
  else if test -e config.ru
    rackup $argv
  else
    echo "None of bin/rails, script/rails, script/server or config.ru found. Maybe this isn't a rack or rails project?"
  end
end
