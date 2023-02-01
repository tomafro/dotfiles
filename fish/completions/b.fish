complete -c 'b' --no-files --arguments '(git for-each-ref --format=\'%(refname:strip=3)\' refs/remotes/origin && git for-each-ref --format=\'%(refname:strip=2)\' refs/heads)'
