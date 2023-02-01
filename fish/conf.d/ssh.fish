dotfiles-link $DOTFILES_PATH/ssh/authorized_keys $HOME/.ssh/authorized_keys

set --local hostName (string replace ".local" "" (hostname))
set --local keyName "tom@$hostName"

if dotfiles-is-installing
  set --local keyFile "$keyName-ed25519"

  if not test -e ~/.ssh/$keyFile
    ssh-keygen -t ed25519 -a 100 -f ~/.ssh/$keyFile -C $keyName
  end

  if not grep -q (cat ~/.ssh/$keyFile.pub) ~/.ssh/authorized_keys
    cat ~/.ssh/$keyFile.pub >> ~/.ssh/authorized_keys
  end

  if not ssh-add -L | grep -q (cat ~/.ssh/$keyFile.pub)
    ssh-add -K ~/.ssh/$keyFile
  end
end

abbr --add ssh '/usr/bin/ssh -A'

if not ssh-add -l | grep -q $keyName
  ssh-add -KA
end
