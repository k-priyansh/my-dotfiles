# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH       # If you come from bash you might have to change your $PATH.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':completion:*' menu select # selectable menu
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]-_}={[:upper:][:lower:]_-}' 'r:|=*' 'l:|=* r:|=*'  # case insensitive completion
zstyle ':completion:*' special-dirs true # Complete . and .. special directories
zstyle ':completion:*' list-colors '' # colorize completion lists
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01' # colorize kill list
export WORDCHARS=${WORDCHARS//[\/]} # remove / from wordchars so that / is a seperator when deleting complete words
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# zstyle ':omz:update' mode disabled                                # disable automatic updates
zstyle ':omz:update' mode auto                                      # update automatically without asking
# zstyle ':omz:update' mode reminder                                # just remind me to update when it's time
# zstyle ':omz:update' frequency 13                                 # auto-update (in days)
# DISABLE_MAGIC_FUNCTIONS="true"                                    # if pasting URLs and other text is messed up.
# DISABLE_LS_COLORS="true" # disable colors in ls
# DISABLE_AUTO_TITLE="true" # disable auto-setting terminal title.
# ENABLE_CORRECTION="true" # enable command auto-correction.
# HISTFILE=~/.zsh_history
# HISTSIZE=1000
# SAVEHIST=1000
# setopt appendhistory


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git zsh-syntax-highlighting zsh-autosuggestions battery brew coffee copybuffer copyfile copypath dirhistory git history sudo
    terraform toolbox torrent vscode web-search xcode zsh-interactive-cd zsh-navigation-tools)

source $ZSH/oh-my-zsh.sh


# >>> aliases >>>
[[ -f $HOME/.zsh/aliases/aliases.zsh ]] && source $HOME/.zsh/aliases/aliases.zsh
[[ -f $HOME/.zsh/functions/functions.zsh ]] && source $HOME/.zsh/functions/functions.zsh
[[ -f $HOME/.zsh/backup/backup.zsh ]] && source $HOME/.zsh/backup/backup.zsh
[[ -f $HOME/.zsh/scripts/scripts.zsh ]] && source $HOME/.zsh/scripts/scripts.zsh
[[ -f $HOME/.zsh/starship.zsh ]] && source $HOME/.zsh/starship.zsh
# [[ -f $HOME/.zsh/zap.zsh ]] && source $HOME/.zsh/zap.zsh


# >>> Powerlevel10k Configuration >>>
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> User configuration >>>
eval "$(atuin init zsh)"
eval "$(zoxide init zsh)"
eval "$(direnv hook zsh)"
eval "$(fzf --zsh)"
eval "$(thefuck --alias)"
eval "$(thefuck --alias fk)"
eval "$(starship init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"




# >>> ansible >>>
# eval $(register-python-argcomplete ansible)
# eval $(register-python-argcomplete ansible-config)
# eval $(register-python-argcomplete ansible-console)
# eval $(register-python-argcomplete ansible-doc)
# eval $(register-python-argcomplete ansible-galaxy)
# eval $(register-python-argcomplete ansible-inventory)
# eval $(register-python-argcomplete ansible-playbook)
# eval $(register-python-argcomplete ansible-pull)
# eval $(register-python-argcomplete ansible-vault)
