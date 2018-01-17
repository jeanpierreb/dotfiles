```
                      .___      __    _____.__.__
                    __| _/_____/  |__/ ____\__|  |   ____   ______
                   / __ |/  _ \   __\   __\|  |  | _/ __ \ /  ___/
                  / /_/ (  <_> )  |  |  |  |  |  |_\  ___/ \___ \
                  \____ |\____/|__|  |__|  |__|____/\___  >____  >
                       \/                               \/     \/

            This repository contains personal dotfiles of Jean-Pierre
```

This repo contains my personal dotfiles and are heavily influenced by [Addy Osmani](https://github.com/addyosmani/dotfiles)'s, [Paul Irish](https://github.com/paulirish/dotfiles/)'s, and [Mathias](https://github.com/mathiasbynens/dotfiles/)'s.

## Some differences

Launch Applications:
Browsers, Text Editors, and more..

Remove curlrc because of known conflict with homebrew.


### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

## overview of files

#### shell environement
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`
* `.extra` - not included, explained below

#### Extra file is used to store local specific stuff .extra file
Personally I use this as a store for any custom stuff like work environment specific configurations and local aliases. What's good about this is that changes to your dotfiles don't override these changes.

```
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Jean-Pierre Barthelemy"
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
git clone git@github.com:jeanpierreb/dotfiles.git .dotfiles && cd .dotfiles/OSX && source bootstrap.sh
```

