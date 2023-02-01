function dotfiles-install
	set --local previousDotfilesInstall $dotfilesInstall
	set --global dotfilesInstall true
  source $HOME/.config/fish/conf.d/$argv[1].fish
	set --global dotfilesInstall $previousDotfilesInstall
end
