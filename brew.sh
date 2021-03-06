#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

brew tap homebrew/versions

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install grep
brew install openssh
brew install screen

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

# Setup Brew Cask
brew tap caskroom/cask

#Install Quick Lookup
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install quicklookase
brew cask install qlvideo
brew cask install webpquicklook
brew cask install suspicious-package
brew cask install iterm2

# Download OSX Apps
brew tap caskroom/versions
brew cask install alfred
brew cask install visual-studio-code
brew cask install dropbox
brew cask install google-chrome
brew cask install vlc
brew cask install whatsapp
brew install tmux
brew install zsh
brew install rsync

# Wrapping up
brew prune
brew cleanup

