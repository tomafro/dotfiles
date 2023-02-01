set __werk_sh_commands (command "werk" "commands" "--sh")

function werk
  set command $argv[1]
  set -e argv[1]

  if contains -- "$command" $__werk_sh_commands
    eval (command "werk" "sh-$command" $argv)
  else
    command "werk" "$command" $argv
  end
end
