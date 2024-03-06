function b
  if not set -q argv[1]
    git checkout (git-main-branch)
  else if [ "-" = $argv[1] ]
    git checkout -
  else if git show-ref --verify --quiet refs/heads/$argv[1]
    git checkout $argv[1]
  else if git show-ref --verify --quiet refs/remotes/origin/$argv[1]
    git checkout $argv[1]
  else if git fetch && git show-ref --verify --quiet refs/remotes/origin/$argv[1]
    git checkout $argv[1]
  else
    set currentBranch (git branch --show-current)
    read -l -P "Branch not found, create a new branch from $currentBranch? [y/N]" confirm

    switch $confirm
      case Y y
        git checkout -b $argv[1]
    end
  end
end

# git for-each-ref --format='%(refname:strip=3)' refs/remotes/origin
