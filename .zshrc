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
alias gst='git status'
alias glp='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --branches'
alias gpf='git push --force-with-lease'

# kubectl
alias kc=kubectl

alias ..='cd ..'
alias ll='ls -l'
alias la='ls -la'
alias brewpls='brew update && brew upgrade'

# -------------------

DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# ---------------------
source /Users/migueldiaz/.zsh/antigen-hs/init.zsh

export GPG_TTY=$(tty)

# Foundry
FOUNDRY_BIN=$HOME/.foundry/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="${PATH}:$(go env GOPATH)/bin"
export PATH=$PATH:$(yarn global bin)
export PATH=$PATH:$FOUNDRY_BIN:$GHCUP_BIN:$HOME/.local/bin
export PATH=$PATH:$HOME/.cabal/bin
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
export PATH=$PATH:$HOME/.deno/bin
export PATH=$PATH:/opt/homebrew/anaconda3/bin
export PATH=$HOME/.asdf/shims:$PATH
export PATH=/usr/bin:$PATH

# GHCUP
GHCUP_BIN=$HOME/.ghcup/bin
export GOPATH=$(asdf where golang)/packages
export GOROOT=$(asdf where golang)/go

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/migueldiaz/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/migueldiaz/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/migueldiaz/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/migueldiaz/google-cloud-sdk/completion.zsh.inc'; fi

# Clarinet - Stacks Blockchain
export CLARINET_DISABLE_HINTS=1

# Init StarShip
eval "$(starship init zsh)"

# Autocompletion ZSH

zstyle '*:compinit' arguments -D -i -u -C -w
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# pnpm
export PNPM_HOME="/Users/migueldiaz/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

source $HOME/.no-commit.zshrc

# bun completions
[ -s "/Users/migueldiaz/.bun/_bun" ] && source "/Users/migueldiaz/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

