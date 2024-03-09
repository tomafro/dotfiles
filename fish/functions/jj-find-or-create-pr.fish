# Get the name of the branch used for the change id
function jj-find-or-create-pr
  set branch (jj-push-branch)
  gh pr view $branch || gh pr create --fill --head $branch
end
