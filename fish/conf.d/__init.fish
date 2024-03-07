set script_path (status --current-filename)
set script_dir (dirname $script_path)
set --export DOTFILES_PATH (realpath "$script_dir/../..")

eval (/opt/homebrew/bin/brew shellenv)

if status is-interactive
  mise activate fish | source
else
  mise activate fish --shims | source
end
