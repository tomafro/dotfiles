function localip
  function ip-from-interface
    set found (ifconfig -a | grep $argv[1] -A 4 | grep 'inet ' | awk '{ print $2 }')
    if test -z $found
      return 1
    else
      echo $found
    end
  end

  for interface in en0 en1
    if ip-from-interface $interface
      break
    end
  end
end