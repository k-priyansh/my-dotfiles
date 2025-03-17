# -----------------------------------------------------
# Git
# -----------------------------------------------------
alias gi='git init'                                                                 # initialize a git repository
alias gro='git remote add origin'                                                   # add a remote repository
alias ga='git add'                                                                  # add files to the staging area
alias gaa='git add .'                                                               # add all files to the staging area
alias gcm='git commit -m'                                                           # commit files with a message
alias gpsh='git push'                                                               # push files to the remote repository
alias gpsho='git push -u origin'                                                    # push files to the remote repository and set the upstream tracking information
alias gss='git status -s'                                                           # show the status of the repository
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'               # show the status of the repository

alias gca="git commit -a -m"
alias gpo="git pull origin"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"
alias gdiff="git diff"
alias gco="git checkout"
alias gb='git branch'
alias gba='git branch -a'
alias ga='git add -p'
alias gcoall='git checkout -- .'
alias gr='git remote'
alias gre='git reset'