# Jean-Pierre's dotfiles.

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
* `.extra` - not included, explained above

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
git clone https://github.com/jeanpierreb/dotfiles.git .dotfiles && cd .dotfiles && source bootstrap.sh
```
