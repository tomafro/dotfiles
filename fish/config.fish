abbr --add ls 'ls -ahGl'
abbr --add cal 'gcal --starting-day=1 .'

if test -e $HOME/.private/config.fish
  source $HOME/.private/config.fish
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"

