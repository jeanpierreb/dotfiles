#!/bin/zsh

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install more recent versions of some OS X tools.
brew install moreutils
brew install vim
brew install grep
brew install openssh
brew install screen
brew install wget

# System Packages
brew install python3
brew install git
brew install git-lfs
brew install rename
brew install tree
brew install htop
brew install cowsay
brew install lolcat
brew install fortune
brew install gnupg gnupg2

#Install Quick Lookup
brew install qlcolorcode
brew install qlstephen
brew install qlmarkdown
brew install quicklook-json
brew install qlprettypatch
brew install quicklook-csv
brew install qlcolorcode
brew install qlimagesize
brew install quicklookase
brew install qlvideo
brew install webpquicklook
brew install suspicious-package
brew install iterm2

# Download OSX Apps
brew tap homebrew/cask-versions
brew install alfred
brew install visual-studio-code
brew install dropbox
brew install google-chrome
brew install vlc
brew install whatsapp
brew install tmux
brew install zsh
brew install rsync

# Wrapping up
brew cleanup

