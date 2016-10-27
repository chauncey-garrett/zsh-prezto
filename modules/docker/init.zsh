#
# Defines Docker aliases.
#
# Author:
#   François Vantomme <akarzim@gmail.com>
#

# Return if requirements are not found.
if (( ! $+commands[docker] )); then
  return 1
fi

#
# Functions
#
function dkme {
  eval $(docker-machine env $1)
}

#
# Aliases
#

alias dk='docker'
alias dka='docker attach'
alias dkb='docker build'
alias dkd='docker diff'
alias dke='docker exec'
alias dkE='docker exec -it'
alias dkh='docker history'
alias dki='docker images'
alias dkin='docker inspect'
alias dkk='docker kill'
alias dkl='docker logs'
alias dkn='docker network'
alias dkps='docker ps'
alias dkpsa='docker ps -a'
alias dkr='docker run'
alias dkR='docker run -it --rm'
alias dkRe='docker run -it --rm --entrypoint /bin/bash'
alias dkrm='docker rm'
alias dkrmi='docker rmi'
alias dks='docker start'
alias dkS='docker restart'
alias dkss='docker stats'
alias dkw='docker wait'
alias dkx='docker stop'

alias dkm='docker-machine'
alias dkmip='docker-machine ip'
alias dkmls='docker-machine ls'
alias dkmps='docker-machine ps'
alias dkms='docker-machine start'
alias dkmS='docker-machine restart'
alias dkmu='docker-machine url'
alias dkmup='docker-machine upgrade'
alias dkmx='docker-machine stop'

alias dkc='docker-compose'
alias dkcd='docker-compose down'
alias dkce='docker-compose exec'
alias dkck='docker-compose kill'
alias dkcl='docker-compose logs'
alias dkcps='docker-compose ps'
alias dkcr='docker-compose run'
alias dkcrm='docker-compose rm'
alias dkcs='docker-compose start'
alias dkcS='docker-compose restart'
alias dkcu='docker-compose up'
alias dkcx='docker-compose stop'

# Clean up exited containers
alias dkcc='docker rm $(docker ps -a | grep Exited | awk '"'"'{ print $1  }'"'"')'

# Clean up dangling images
alias dkci='docker rmi $(docker images -f dangling=true -q)'


