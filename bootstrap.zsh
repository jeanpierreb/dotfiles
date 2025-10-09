#!/usr/bin/env zsh
set -euo pipefail

# cd to this script's directory (zsh-only expansion)
cd "${0:A:h}"
echo "Now in: $PWD"

git pull origin master

doIt() {
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
        --exclude "README.md" --exclude "LICENSE" --exclude "bin/" \
        --exclude "brew.sh" --exclude "init/" \
        -avh --no-perms . ~
  source ~/.zshrc
}

if [[ "$#" -gt 0 && ( "$1" == "--force" || "$1" == "-f" ) ]]; then
  doIt
else
  # zsh-friendly yes/no prompt; returns 0 on y/Y
  if read -q "REPLY?This may overwrite existing files in your home directory. Are you sure? (y/n) "; then
    echo
    doIt
  else
    echo
  fi
fi

unset -f doIt
