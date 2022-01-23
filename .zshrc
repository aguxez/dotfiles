# Better editor
export EDITOR=vim

# ALIASES
# Alias HH and utilities
alias hh='npx hardhat'

# kubectl
alias kc=kubectl

# Colorize
# alias cat=ccat

# If you come from bash you might have to change your $PATH.
# export PATH=/usr/local/opt/grep/libexec/gnubin:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="fwalch"

DISABLE_UPDATE_PROMPT="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

# HIST_STAMPS="mm/dd/yyyy"

plugins=(git colorize)

source $ZSH/oh-my-zsh.sh

# User configuration

. /Users/migueldiaz/.asdf/completions/asdf.bash
. /Users/migueldiaz/.asdf/asdf.sh

. /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/migueldiaz/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/migueldiaz/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/migueldiaz/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/migueldiaz/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export CLOUDSDK_PYTHON=python2
[ -f "/Users/migueldiaz/.ghcup/env" ] && source "/Users/migueldiaz/.ghcup/env" # ghcup-env
