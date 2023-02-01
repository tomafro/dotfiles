# if dotfiles-is-installing
#   git clone https://github.com/asdf-vm/asdf.git ~/.asdf > /dev/null
#   cd ~/.asdf
#   git fetch
#   git checkout (git describe --abbrev=0 --tags) > /dev/null

#   asdf plugin-add direnv
#   asdf install direnv 2.20.0
#   asdf global  direnv 2.20.0
#   cd ~ && asdf install
# end

dotfiles-link $DOTFILES_PATH/asdf/tool-versions $HOME/.tool-versions
