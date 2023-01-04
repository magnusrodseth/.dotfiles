# Path to your oh-my-zsh installation.
export ZSH="/Users/magnusrodseth/.oh-my-zsh"
export DEFAULT_USER="$(whoami)"

CONFIG_DIR="~/.config/lazygit"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git 
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-z
    vi-mode
)

# Controls whether the prompt is redrawn when switching to a different input mode.
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

# Controls the indicator when in vi normal mode
MODE_INDICATOR="%F{green}<<< NORMAL%f"

source $ZSH/oh-my-zsh.sh

# Aliases
alias intel="idea"
alias vim="nvim"
alias vi="nvim"
alias bim="nvim"
alias gitui="git ui"
alias drawio='/Applications/draw.io.app/Contents/MacOS/draw.io'
alias lzd="lazydocker"
alias tf="terraform"
alias cat="bat"
alias l="exa --long -h"
alias lg="l --git"
alias ls="exa"
alias ll="exa -l"
alias cp='xcp'
alias find="fd"
alias ps="procs"
alias top="btm"
alias c="code"
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

export EDITOR='/usr/local/bin/nvim'
export VISUAL="$EDITOR"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/magnusrodseth/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/magnusrodseth/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/magnusrodseth/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/magnusrodseth/google-cloud-sdk/completion.zsh.inc'; fi

# place this after nvm initialization!
# Automatically execute nvm use if .nvmrc exists
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

export GITHUB_PACKAGES_TOKEN="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"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# bun completions
[ -s "/Users/magnusrodseth/.bun/_bun" ] && source "/Users/magnusrodseth/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export LC_ALL=en_US.UTF-8

export ANDROID_HOME="$HOME/Library/Android/sdk"
export STARSHIP_CONFIG=~/.dotfiles/.config/starship/starship.toml


eval "$(starship init zsh)"


# pnpm
export PNPM_HOME="/Users/magnusrodseth/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

export FZF_DEFAULT_OPTS="--height 60% --layout=reverse --border"
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
