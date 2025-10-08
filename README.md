This repo contains my personal dotfiles and are heavily influenced by [Addy Osmani](https://github.com/addyosmani/dotfiles)'s, [Paul Irish](https://github.com/paulirish/dotfiles/)'s, and [Mathias](https://github.com/mathiasbynens/dotfiles/)'s.

## Overview of files

#### shell environement
* `.aliases`
* `.exports`
* `.functions`
* `.extra` - not included, explained below

#### Extra file is used to store local specific stuff .extra file
Personally I use this as a store for any custom stuff like work environment specific configurations and local aliases. What's good about this is that changes to your dotfiles don't override these changes.

```
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="YOUR_NAME_HERE"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="example@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"

# specific aliases below
alias funsies="fortune | cowsay | lolcat";
```

#### manual run
* `.osx` - run on a fresh osx machine
* `.brew` - homebrew intialization witih cask

#### git, brah
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`
* `.inputrc` - config for bash readline


## Installation

```bash
git clone git@github.com:jeanpierreb/dotfiles.git .dotfiles && cd .dotfiles && source bootstrap.sh
```

