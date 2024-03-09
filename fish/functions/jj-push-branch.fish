# Get the name of the branch used for the change id
function jj-push-branch
  echo "push-$(jj log -T "change_id.short(12)" -l 1 --no-graph -r @)"
end
