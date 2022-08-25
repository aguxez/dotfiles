# -------------------
export EDITOR=vim

# Loads vcs_info for PROMPT
autoload -Uz vcs_info
precmd() { vcs_info }

# -------------------
zstyle ':vcs_info:git:*' formats 'on %b %u'

setopt prompt_subst
PROMPT='%F{082}%~%f ${vcs_info_msg_0_} -> '

# -------------------

# ALIASES
alias hh='npx hardhat'

alias gst='git status'
alias glp='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --branches'
alias gpf='git push --force-with-lease'

# Haskell
alias str='stack run'
alias stb='stack build'
alias stbp='stb --pedantic'

# kubectl
alias kc=kubectl

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

# Foundry
FOUNDRY_BIN=$HOME/.foundry/bin

# GHCUP
GHCUP_BIN=$HOME/.ghcup/bin

export PATH=$PATH:$FOUNDRY_BIN:$GHCUP_BIN:$HOME/.local/bin:/opt/homebrew/opt/llvm/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/migueldiaz/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/migueldiaz/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/migueldiaz/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/migueldiaz/google-cloud-sdk/completion.zsh.inc'; fi

export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export C_INCLUDE_PATH="`xcrun --show-sdk-path`/usr/include/ffi"
