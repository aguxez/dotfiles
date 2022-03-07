# Better editor
EDITOR=vim

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

. /Users/migueldiaz/.asdf/completions/asdf.bash
. /Users/migueldiaz/.asdf/asdf.sh

# ---------------------

export NVM_DIR="$HOME/.nvm"

# NVM setup is comented because it's super slow and I personally don't use NVM so often to have this active by default
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/migueldiaz/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/migueldiaz/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/migueldiaz/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/migueldiaz/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

source /Users/migueldiaz/.zsh/antigen-hs/init.zsh
source /Users/migueldiaz/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export GPG_TTY=$(tty)

export PATH="$PATH:/Users/migueldiaz/.foundry/bin"
