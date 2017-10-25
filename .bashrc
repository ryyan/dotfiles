# Bash
export PS1="\u@\h-> "
export EDITOR=vim


# Aliases
alias v='vim'
alias vi='vim'
alias la='ls -a'


# Go Version Manager
source ~/.gvm/scripts/gvm
gvm use go1.9.1 > /dev/null


# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#Docker
dockercleanup ()
{
    echo 'Removing containers:' 1>&2;
    docker ps -a | tail -n +2 | awk '$2 ~ "^[0-9a-f]+$" {print $1}' | xargs docker rm -f --volumes=true;
    echo 'Removing images:' 1>&2;
    docker images | tail -n +2 | awk '$1 == "<none>" {print $3}' | xargs docker rmi -f
}
