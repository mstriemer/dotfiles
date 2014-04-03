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
    python -m virtualenv $* $env_name
    workon .
}

function a {
    workon .
    export PATH=$(pwd)/node_modules/.bin:$PATH
}

function rubyit {
  chruby `cat .ruby-version`
  export RUBYIT_PATH=`pwd`/bin
  export PATH=$RUBYIT_PATH:$PATH
}

function unrubyit {
  ruby ~/.unrubyit.rb
}

function rubyinstall {
  ruby=`cat .ruby-version`
  chruby | grep $ruby
  if [ $? -ne 0 ]; then
    echo "Installing $ruby..."
    ruby-build -k $ruby ~/.rubies/$ruby
    $? && echo "success" && return 0
    echo "failure" && return 1
  fi
  echo "$ruby is already installed" && return 2
}

