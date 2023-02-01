function prod
  for name in $argv
    mkdir -p (dirname $name)
    touch $name
  end
end
