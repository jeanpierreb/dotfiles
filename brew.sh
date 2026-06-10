#!/bin/zsh
set -e

print "Updating and installing Homebrew packges."

# Make sure we’re using the latest Homebrew.
brew update && brew upgrade && brew cleanup

# Install more recent versions of some OS X tools.
brew install moreutils
brew install neovim
brew install tmux
brew install grep
brew install openssh
brew install screen
brew install wget
brew install docker

# TS, JS, and Node
# brew install deno
# brew install node
# brew install n
# brew install yarn
# brew install pnpm


#neovim docker

# System Packages
brew install python3
brew install git
brew install git-lfs
brew install tree
brew install btop
brew install gnupg gnupg2

#Install Quick Lookup
brew install qlmarkdown
brew install suspicious-package

# Download OSX Apps
brew install --cask quicklook-video
brew install --cask alfred
brew install --cask dropbox
brew install --cask google-chrome
brew install --cask firefox
brew install --cask tor
brew install --cask vlc
brew install --cask tmux
brew install --cask obsidian
brew install --cask rsync
brew install --cask ghostty
brew install --cask figma
brew install --cask logi-options+
brew install --cask claude
brew install --cask claude-code
brew install --cask affinity

# Wrapping up
brew cleanup

