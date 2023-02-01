function fish_title
  set repo (work_repo)

  if [ "$repo" = "" ]
    if [ "$argv[1]" = "" ]
      pwd
    else
      echo "$argv[1]"
    end
  else
    set branch (git branch --show-current)
    set full_repo "$repo:$branch"

    if [ "$argv[1]" = "" ]
      echo "$full_repo"
    else
      echo "$argv[1] ($full_repo)"
    end
  end
end
