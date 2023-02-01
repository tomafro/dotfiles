if dotfiles-is-installing
end

dotfiles-link $DOTFILES_PATH/ruby/irbrc $HOME/.irbrc
dotfiles-link $DOTFILES_PATH/ruby/railsrc $HOME/.railsrc

set --export BUNDLE_BIN  ".bundle/bin"
set --export BUNDLER_EDITOR "code --add"
set PATH ./.bundle/../bin $BUNDLE_BIN $PATH

abbr --add bi bundle install
abbr --add rt "spring stop && rails test"
