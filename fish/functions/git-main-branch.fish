function git-main-branch
	if git show-ref --verify --quiet refs/heads/master
    echo "master"
  else if git show-ref --verify --quiet refs/heads/main
    echo "main"
  end
end
