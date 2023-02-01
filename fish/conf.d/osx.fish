if dotfiles-is-installing
  dotfiles-log "🍏 Setting OS X defaults"

  defaults write NSGlobalDomain NSUserKeyEquivalents -dict-add "Zoom" "@^z"

  defaults write com.apple.dock 'orientation' -string 'left'
  defaults write com.apple.dock 'autohide' -int 1
  defaults write com.apple.dock 'show-recents' -int 0
  defaults write com.apple.dock 'tilesize' -int 45

  killall Dock

  # Enable the Develop menu and the Web Inspector in Safari
  defaults write com.apple.Safari IncludeDevelopMenu -bool true
  defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
  defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

  # Add a context menu item for showing the Web Inspector in web views
  defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

  killall Safari

  # Require password immediately after sleep or screen saver begins
  defaults write com.apple.screensaver askForPassword -int 1
  defaults write com.apple.screensaver askForPasswordDelay -int 0

  # Only use UTF-8 in Terminal.app
  defaults write com.apple.terminal StringEncodings -array 4

  # Use 1.1.1.1 for DNS
  networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1 2606:4700:4700::1111 2606:4700:4700::1001
end
