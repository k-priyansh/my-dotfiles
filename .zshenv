# GO
# export GOPATH='/Users/omerxx/go'

# KUBERNETES
# export KUBECONFIG=~/.kube/config

# FZF
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow'

# export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/omer/.vimpkg/bin:${GOPATH}/bin:/Users/omerxx/.cargo/bin

# HOMEBREW
# export PATH=/opt/homebrew/bin:$PATH

# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8 # You may need to manually set your language environment
export PATH="/usr/lib/ccache/bin/:$PATH"                                          # Added location to path variable for path
export EDITOR=/usr/share/code/bin/code                                            # set editor to vscode
export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin                               # added locations to path variable for cargo
# export NVM_DIR="$HOME/.nvm"                                                       # added location to path variable for nvm
export PYENV_ROOT="$HOME/.pyenv"                                                  # added location to path variable for pyenv

# vagrant config needed inside WSL2
# export VAGRANT_DEFAULT_PROVIDER="hyperv"                                          # set default provider to Hyper-V
# export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"                                      # enable windows access for WSL2
# export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"                            # added location to path variable

# nvm directory
### load nvm
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# # NVM lazy load
# if [ -s "$HOME/.nvm/nvm.sh" ]; then
#   [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
#   alias nvm='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && nvm'
#   alias node='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && node'
#   alias npm='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && npm'
# fi

# gpg agent config with pinentry-mac
# export GPG_TTY=$(tty) # based on this guide https://gist.github.com/troyfontaine/18c9146295168ee9ca2b30c00bd1b41e

# pyenv
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# ### add local bin to path
# export PATH=$HOME/bin:$PATH

# sdkman
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# conda
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "$HOME/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="$HOME/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup


# --- kubectl krew initialize >>>
# export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
# PROMPT="${PROMPT}"$'\n\n'

# --- Autocompletions initialize >>>
# fpath=(~/.zsh/site-functions $fpath)
# autoload -Uz compinit && compinit


# pdtm tool
export PATH=$PATH:$HOME/.pdtm/go/bin
