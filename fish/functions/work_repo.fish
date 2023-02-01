function work_repo
  set repoTopLevel (git rev-parse --show-toplevel 2>/dev/null)

  if [ "$repoTopLevel" != "" ]
    if [ "$repoTopLevel" != "$work_repo_last_path" ]
      set --global work_repo_last_path "$repo"
      if git remote get-url origin > /dev/null 2>&1
        set --local origin (git remote get-url origin)
        set --local name (string match -r "(?:github.com[/:])(.*?)(?:\.git)?\Z" $origin)
        set --global work_repo_last_name $name[2]
      else
        set --global work_repo_last_name (pwd)
      end
    end
    echo "$work_repo_last_name"
  end
end
