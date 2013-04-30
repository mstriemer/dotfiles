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

gifify() {
  if [[ -n "$1" ]]; then
    if [[ $2 == '--good' ]]; then
      ffmpeg -i $1 -r 10 -vcodec png out-static-%05d.png
      time convert -verbose +dither -layers Optimize -resize 600x600\> out-static*.png  GIF:- | gifsicle --colors 128 --delay=5 --loop --optimize=3 --multifile - > $1.gif
      rm out-static*.png
    else
      ffmpeg -i $1 -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $1.gif
    fi
  else
    echo "proper usage: gifify <input_movie.mov>. You DO need to include extension."
  fi
}
