# -----------------------------------------------------
# Docker
# -----------------------------------------------------
alias docker="sudo docker"
alias dr="docker"                                                                   # docker command
alias dri="docker images"                                                           # show docker images
alias drpl="docker pull"                                                            # pull docker image
alias drps="docker ps"                                                              # show docker containers
alias drpu="docker push"                                                            # push docker image
alias drr="docker run"                                                              # run docker container
alias drs="docker search"                                                           # search docker image
alias drcps="docker container ps --all"                                             # search all docker containers
alias drstp="docker stop conatiner"                                                 # stop docker container


# -----------------------------------------------------
# Container
# -----------------------------------------------------
alias dpr="docker container start myportainer"                                      # start docker container myportainer - docker gui
alias dpra="docker start portagent"                                                 # portainer externsion for docker

alias dr-kali="docker start mykali && docker attach mykali"                         # kali-linux container

alias drparrot="docker run --rm -ti --network host -v $PWD/work:/work parrotsec/security"

# Add aliases for docker
alias dps='docker ps -a'
alias dpsf='docker ps -f status=exited'
alias dstop='docker stop $(docker ps -q)'
alias drm='docker rm $(docker ps -aq)'
alias drmi='docker rmi $(docker images -q)'
alias drun='docker run -it'
alias dexec='docker exec -it'

# Add aliases for docker
alias dps='docker ps -a'
alias dpsf='docker ps -f status=exited'
alias dstop='docker stop $(docker ps -q)'
alias drm='docker rm $(docker ps -aq)'
alias drmi='docker rmi $(docker images -q)'
alias drun='docker run -it'
alias dexec='docker exec -it'



# Docker
alias dco="docker compose"
alias dps="docker ps"
alias dpa="docker ps -a"
alias dl="docker ps -l -q"
alias dx="docker exec -it"
