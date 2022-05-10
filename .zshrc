# Better editor
export EDITOR=vim

# Loads vcs_info for PROMPT
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats 'on %b %u'

setopt prompt_subst
PROMPT='%F{082}%~%f ${vcs_info_msg_0_} -> '

# ALIASES
# Alias HH and utilities
alias hh='npx hardhat'
alias gst='git status'

# kubectl
alias kc=kubectl

# goodies
alias ..='cd ..'
alias ll='ls -l'
alias la='ls -la'

# -------------------

DISABLE_UPDATE_PROMPT="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

# HIST_STAMPS="mm/dd/yyyy"

# User configuration

. /opt/homebrew/opt/asdf/libexec/asdf.sh

# ---------------------

export NVM_DIR="$HOME/.nvm"

# NVM setup is comented because it's super slow and I personally don't use NVM so often to have this active by default
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /Users/migueldiaz/.zsh/antigen-hs/init.zsh

export GPG_TTY=$(tty)

export PATH="$PATH:/Users/migueldiaz/.foundry/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/migueldiaz/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/migueldiaz/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/migueldiaz/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/migueldiaz/google-cloud-sdk/completion.zsh.inc'; fi
