function _checkout
end

function repo
	set --local repoDetails (gh repo view $argv[1] --json name,owner,url) || return 1
	set --local owner (echo $repoDetails | jq -r ".owner.login")
	set --local name (echo $repoDetails | jq -r ".name")
	set --local url (echo $repoDetails | jq -r ".url")
	set --local path "/Users/tom/Code/$owner/$name"

	if test -e $path
	  echo "Repository $url already checked out"
	else
	  mkdir -p "/Users/tom/Code/$owner"
		cd "/Users/tom/Code/$owner" && git clone $url
		echo "Cloned $url into $path"
	end
	echo "Changing folder to $path"
	cd $path
end
