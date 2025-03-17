# Add aliases for directories
alias gprj="z $HOME/Projects"                                                       # open project folder in terminal
alias gcs="z $HOME/Vault's/10 Cheat-sheets"                                         # open cheat sheet folder in terminal
alias vsetting="code ~/.config/Code/User/settings.json"                             # open visual studio code setting in vscode


# Add aliases for useful commands
alias ls-supply="ls -1 /sys/class/power_supply/"                                    # show system powersupply grids 
alias cl="clear"                                                                     # clear the terminal
alias up="sudo apt update"                                                          # update the system
alias ug="sudo apt -y full-upgrade"                                                 # upgrade the system
alias fup="sudo apt update && sudo apt -y upgrade"                                  # update and upgrade the system
alias w="sudo nano"


# Add aliases for package management
alias search="apt-cache search"                                                      # search for packages
alias update="sudo apt update"                                                      # update package list
alias install="sudo apt install -y"                                                 # Install Applications
alias purge="sudo apt purge -y"
alias fx="-fix-missing"


# Add aliases for system information
alias mem="free -h"                                                                 # show memory usage
alias batteryreport="upower -i /org/freedesktop/UPower/devices/battery_BAT1"        # get battery report
alias ghost="gs"                                                                    # replace ghostscript command so git status works properly
alias os-info-short="cat /etc/os-release"
alias nf='neofetch'                                                                 # show system information
alias ff='fastfetch'                                                                # show system information
alias clear-swap="sudo swapoff -a; sudo swapon -a"                                  # clear swap memory


# Add aliases for system tools
alias cpu='sensors'                                                                  # show cpu usage
alias gpu='nvidia-smi'                                                                # show gpu usage
alias wifi='nmtui'                                                                  # wifi settings

# Add aliases for poweroption
alias shutdown='systemctl poweroff'                                                 # shutdown the system


# Add aliases for ls command
alias e="exit"                                                                      # exit the terminal
alias cd="z"                                                                        # change directory
alias o="nautilus ."                                                                # Open the current directory in Finder
alias lt='eza -a --tree --level=2 --icons=always'                                   # show system information
alias ls="eza --icons --group-directories-first"                                    # list files and directories
alias ll="eza --icons --group-directories-first -l"                                 # list files and directories with details
alias la="eza --icons --group-directories-first -l -a"                              # list all files and directories with details
alias bat="$HOME/.apps/bat/bat"                                                     # bat command
alias cat="bat"                                                                     # cat command
alias tree="eza -a --tree --level=10 --icons=always"
alias l="eza -l --icons --git -a"
alias llt="eza --tree --level=2 --long --icons --git"
alias ltree="eza --tree --level=2  --icons --git"

# !zshrc
alias modzsh="code ~/.zshrc"                                                       # change the zsh configuration
alias sz="source $HOME/.zshrc"                                                      # reload the zsh configuration

alias diff='diff --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias less='less -R'
alias man='man -P "less -R"'
alias ncat='nc -nv'
alias ncdu='ncdu -x'
alias netcat='nc'
alias psql='psql -U postgres'
alias rsync='rsync --progress'
alias tail='tail -f'
alias vi='vim'



