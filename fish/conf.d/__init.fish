set script_path (status --current-filename)
set script_dir (dirname $script_path)
set --export DOTFILES_PATH (realpath "$script_dir/../..")

eval (/opt/homebrew/bin/brew shellenv)
source (brew --prefix asdf)/libexec/asdf.fish
