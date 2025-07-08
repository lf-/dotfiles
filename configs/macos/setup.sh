#!/usr/bin/env bash

# https://macos-defaults.com

# make key repeat normal
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"

# show extensions in finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

# show hidden files in finder
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"

# show path bar
defaults write com.apple.finder "ShowPathbar" -bool "true"

# keep folders on top while sorting by name
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"

# don't warn on changing file extensions
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"

# don't save new documents to cloud
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"

# rollover delay for proxy folder icon in finder title bar
defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0"

# top clock format
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm\""

# safari shows url (what...)
defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool "true"
