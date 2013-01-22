function workon {
    if [[ $1 == "." ]]; then
        env_name=${PWD##*/}
    else
        env_name=$1
    fi
    source $HOME/.virtualenvs/$env_name/bin/activate
}

function workonthis {
    env_name=$HOME/.virtualenvs/${PWD##*/}
    virtualenv $* $env_name
    workon .
}
