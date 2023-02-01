if dotfiles-is-installing
  dotfiles-log "💻 Setting up VS Code"

  function __vscode_install_extension
    yes 1 | code --install-extension $argv[1]
  end

  # Can list extensions with code --list-extensions
  # __vscode_install_extension anseki.vscode-color
  # __vscode_install_extension bungcip.better-toml
  # __vscode_install_extension eamodio.gitlens
  # __vscode_install_extension file-icons.file-icons
  # __vscode_install_extension ms-vscode.Go
  # __vscode_install_extension msjsdiag.debugger-for-chrome
  # __vscode_install_extension rust-lang.rust
  # __vscode_install_extension sleistner.vscode-fileutils
  # __vscode_install_extension streetsidesoftware.code-spell-checker
  # __vscode_install_extension skyapps.fish-vscode

  for type in fish rb js clj go rs sh bash json xml yaml text textile md erb bats toml rake
    duti -s com.microsoft.VSCode .{$type} all
  end
end

set --export EDITOR "code"

dotfiles-link "$DOTFILES_PATH/vscode/settings.json"    "$HOME/Library/Application Support/Code/User/settings.json"
dotfiles-link "$DOTFILES_PATH/vscode/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"
