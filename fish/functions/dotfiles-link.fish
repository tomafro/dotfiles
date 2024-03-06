function dotfiles-link
  set current (readlink $argv[2])
  if test "$current" != "$argv[1]"
    dotfiles-log "Creating link from $argv[1] to $argv[2]"
    mkdir -p (dirname $argv[2])
    ln -Fs "$argv[1]" "$argv[2]"
  end
end
