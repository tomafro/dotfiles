function github-access-token
  if security show-keychain-info login.keychain-db &> /dev/null
	  printf "url=https://github.com" | git credential fill | grep password= | string replace "password=" ""
  else
    printf "🔒 Login keychain locked. Unable to read github access token" 1>&2
  end
end
