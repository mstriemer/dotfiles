alias t="tmux -u"
alias r="rails"

# pip
alias pi="pip install"
alias pr="pip install -r requirements.txt"
alias pf='pip freeze -r requirements.txt | grep -v "^#"'

# bundler
alias be="bundle exec"
alias bi="bundle install"
alias bl="bundle list"
alias bp="bundle package"
alias bu="bundle update"

alias ackall="ack -a --ignore-dir={log,coverage,doc,tmp,vendor}"

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

alias workonit="workon ."
