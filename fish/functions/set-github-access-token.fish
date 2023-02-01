function set-github-access-token
  #printf "url=https://github.com\npassword=$argv[1]\n"
	printf "url=https://github.com\n" | git credential fill | grep password= | string replace "password=" ""
end
