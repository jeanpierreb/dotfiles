# ─── PATH setup ───────────────────────────────────────────────
# Base paths
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Homebrew
export PATH=/opt/homebrew/sbin:/opt/homebrew/bin:$PATH

# npm globals
export PATH=$HOME/.npm-global/bin:$PATH

# n (Node version manager) — must come AFTER Homebrew so n's Node wins
export N_PREFIX="$HOME/.n"
export PATH="$N_PREFIX/bin:$PATH"

# Local bins (Claude, etc.)
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin"

# ─── Version managers ─────────────────────────────────────────
# pyenv (Python)
eval "$(pyenv init --path)"

# ─── oh-my-zsh ────────────────────────────────────────────────
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
ZSH_CUSTOM="${ZSH_CUSTOM:-$ZSH/custom}"
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true
ZSH_COMPDUMP="${ZSH_COMPDUMP:-$HOME/.zcompdump}"
plugins=(
  # Version Control
  git

  # Cloud & Infrastructure
  docker
  docker-compose
  terraform
  aws

  # Programming Languages & Tools
  python
  pip
  tmux
  node
  npm
  yarn
  golang

  # Productivity Boosters
  sudo              # Press ESC twice to add sudo to previous command
  extract           # Universal archive extractor (works with .tar, .zip, .gz, etc.)
  z                 # Jump to frequently used directories
  history           # Enhanced history commands
  command-not-found # Suggests package to install for missing commands

  # Community Plugins (must be last)
  zsh-autosuggestions
  zsh-syntax-highlighting
)
ZSH_CACHE_DIR="$ZSH/cache"
source $ZSH/oh-my-zsh.sh

# ─── Personal config ──────────────────────────────────────────
[ -f ~/.aliases ]   && source ~/.aliases
[ -f ~/.functions ] && source ~/.functions

