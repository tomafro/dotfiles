function man
	set --local postscript "$TMPDIR/$argv[1].ps"
	command man -t $argv[1] > $postscript; and open -a Preview $postscript
end
