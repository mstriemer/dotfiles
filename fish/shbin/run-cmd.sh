if [ ! -p commands-fifo ]; then
    mkfifo commands-fifo
fi

echo "Awaiting commands..."

while true; do
    cmd=$(cat commands-fifo)
    echo "\n\n\n"
    sh -c "$cmd"
done
