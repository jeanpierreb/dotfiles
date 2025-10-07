#!/bin/zsh

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install more recent versions of some OS X tools.
brew install moreutils
brew install nvim
brew install grep
brew install openssh
brew install screen
brew install wget

# System Packages
brew install python3
brew install git
brew install git-lfs
brew install tree
brew install btop
brew install gnupg gnupg2

#Install Quick Lookup
brew install qlstephen
brew install qlmarkdown
brew install quicklook-json
brew install qlprettypatch
brew install quicklook-csv
brew install qlcolorcode
brew install quicklookase
brew install qlvideo
brew install webpquicklook
brew install suspicious-package

# Download OSX Apps
brew tap homebrew/cask-versions
brew install --cask alfred
brew install --cask dropbox
brew install --cask google-chrome
brew install --cask firefox
brew install --cask tor
brew install --cask vlc
brew install --cask tmux
brew install --cask rsync
brew install --cask ghostty

# Wrapping up
brew cleanup

