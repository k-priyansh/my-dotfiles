# --- Source other configs initialize >>>
[[ -f $HOME/.zsh/aliases/bin/apps.zsh ]] && source $HOME/.zsh/aliases/bin/apps.zsh
[[ -f $HOME/.zsh/aliases/bin/docker.zsh ]] && source $HOME/.zsh/aliases/bin/docker.zsh
[[ -f $HOME/.zsh/aliases/bin/extras/college.zsh ]] && source $HOME/.zsh/aliases/bin/extras/college.zsh
[[ -f $HOME/.zsh/aliases/bin/extras/k8S.zsh ]] && source $HOME/.zsh/aliases/bin/extras/k8S.zsh
[[ -f $HOME/.zsh/aliases/bin/extras/labs.zsh ]] && source $HOME/.zsh/aliases/bin/extras/labs.zsh
[[ -f $HOME/.zsh/aliases/bin/extras/pnpm.zsh ]] && source $HOME/.zsh/aliases/bin/extras/pnpm.zsh
[[ -f $HOME/.zsh/aliases/bin/general.zsh ]] && source $HOME/.zsh/aliases/bin/general.zsh
[[ -f $HOME/.zsh/aliases/bin/git.zsh ]] && source $HOME/.zsh/aliases/bin/git.zsh
[[ -f $HOME/.zsh/aliases/bin/hacking.zsh ]] && source $HOME/.zsh/aliases/bin/hacking.zsh
[[ -f $HOME/.zsh/aliases/bin/network.zsh ]] && source $HOME/.zsh/aliases/bin/network.zsh
[[ -f $HOME/.zsh/aliases/bin/pro_lang.zsh ]] && source $HOME/.zsh/aliases/bin/pro_lang.zsh
[[ -f $HOME/.zsh/aliases/bin/vpn.zsh ]] && source $HOME/.zsh/aliases/bin/vpn.zsh


# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# -----------------------------------------------------
# hacking 
# -----------------------------------------------------

# Add aliases for common hacking tools
alias nmap="nmap -sC -sV -oN"
alias hcat='highlight -O ansi'
# alias httpie='http --default-scheme=https'
alias pwncat='pwncat --ssl'
alias sqlmap='sqlmap --batch --random-agent'
alias wfuzz='wfuzz -z file,wfuzz-wordlist.txt'
alias burp="java -jar /path/to/burp/burp.jar"
alias metasploit='msfconsole'
alias gobust='gobuster dir --wordlist ~/security/wordlists/diccnoext.txt --wildcard --url'
alias pydirsearch='python dirsearch.py -w db/dicc.txt -b -u'
alias massdns='~/hacking/tools/massdns/bin/massdns -r ~/hacking/tools/massdns/lists/resolvers.txt -t A -o S bf-targets.txt -w livehosts.txt -s 4000'
alias fuzz='ffuf -w ~/hacking/SecLists/content_discovery_all.txt -mc all -u'
alias gr='~/go/src/github.com/tomnomnom/gf/gf'


# HTTP requests with xh!
alias http="xh"

alias tunnel='ngrok http 4445'

alias mat='osascript -e "tell application \"System Events\" to key code 126 using {command down}" && tmux neww "cmatrix"'

## new 

alias python="python3"
alias py="python3"
alias pip="pip3"


# Obsidian githu
# branch_name="Backup: $(date +'%H-%M_%d-%m-%Y')"
# alias obgc="git checkout -b $branch_name && git add . && git commint -m 'Auto-backup' && git push origin $branch_name && git branch -M $branch_name && git push -u origin $branch_name"
alias obgc="cat $HOME/backup_jobs/obsidian_backup.sh"
alias v="nvim"
