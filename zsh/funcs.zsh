function dir_venv_name {
    echo ${PWD##*/}
}

function venv {
    echo $HOME/.virtualenvs/$1
}

function dir_venv {
    venv $(dir_venv_name)
}

function workon {
    if [[ $1 == "." ]]; then
        env_name=$(dir_venv_name)
    else
        env_name=$1
    fi
    source $(venv $env_name)/bin/activate
}

function workonthis {
    env_name=$HOME/.virtualenvs/${PWD##*/}
    python -m virtualenv $* $(dir_venv)
    workon .
}

function a {
    if [[ -d $(dir_venv) ]]; then
        workon .
    fi
    export PATH=$(pwd)/node_modules/.bin:$PATH
    if [[ -e env.sh ]]; then
        source env.sh
    fi
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

function npm-exec {
    node_modules/.bin/$*
}

curl-json () {
    curl --silent $@ | python -m json.tool
}

bug () {
    if (( $# == 0 )); then
        bug_id=$(git branch | grep '*' | python -c "print(raw_input().split('-')[-1])")
    else
        bug_id=$1
    fi
    open "https://bugzilla.mozilla.org/buglist.cgi?quicksearch=$bug_id"
}

adb-screenrecord () {
    FILENAME=/sdcard/$1.mp4
    adb shell screenrecord $FILENAME &
    echo "Recording... Ctrl-C to stop recording"
    RECORD_PID=$!
    trap 'kill $RECORD_PID' SIGINT
    while kill -0 $RECORD_PID > /dev/null 2>&1
    do
        wait $RECORD_PID
        sleep 2
        adb pull $FILENAME
    done
}

gifify() {
    if [[ -n "$1" ]]; then
        ffmpeg -i $1 -r 20 -vcodec png out-static-%05d.png
        time convert -verbose +dither -layers Optimize -resize 600x600\> out-static*.png  GIF:- | gifsicle --colors 128 --delay=5 --loop --optimize=3 --multifile - >! $1.gif
        rm -f out-static*.png
    else
        echo "proper usage: gifify <input_movie.mov>. You DO need to include extension."
    fi
}

code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}
