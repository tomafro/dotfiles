function sc
  if test -e script/console
    ruby script/console $argv
  else if test -e script/rails
    ruby script/rails console $argv
  else if test -e bin/rails
    bin/rails console $argv
  else if test -e Gemfile
    bundle console
  else
    echo "None of bin/rails, script/rails, script/console, or a Gemfile found. Maybe this isn't a rails or ruby project?"
  end
end
