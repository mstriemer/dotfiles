function gifify
  if test $argv[1]
    set delay 5
    if test $argv[2]
      set delay $argv[2]
    end
    ffmpeg -i $argv[1] -r 20 -vcodec png out-static-%05d.png
    time convert -verbose +dither -layers Optimize -resize 600x600\> out-static*.png  GIF:- | gifsicle --colors 128 --delay=$delay --loop --optimize=3 --multifile - > $argv[1].gif
    rm out-static*.png
  else
    echo "proper usage: gifify <input_movie.mov>. You DO need to include extension."
  end
end
