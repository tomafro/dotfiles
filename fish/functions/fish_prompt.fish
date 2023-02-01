function __fish_prompt_duration
  set --local duration (echo "$CMD_DURATION 1000" | awk '{printf "%.2fs", $1 / $2}')
  set --local last (string split " " (echo $history[1]))

  set_color 777
  echo -n "  $last[1] took ~"
  echo $duration
  set_color normal
end

set __fish_prompt_host (string replace ".local" "" (hostname))

function fish_prompt
  if test $CMD_DURATION -gt 1000
    echo (__fish_prompt_duration)
  end

  if set -q SSH_CLIENT
    set_color 777
    echo -n $__fish_prompt_host
    echo -n ' '
    set_color f8d2a1
  else
    set_color afe0da
  end

  echo -n '❯ '
  set_color normal
end
