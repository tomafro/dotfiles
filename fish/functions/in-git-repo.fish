function in-git-repo
  git rev-parse --is-inside-work-tree &> /dev/null
end
