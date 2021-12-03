function adb-screenrecord
    set filename /sdcard/$argv[1].mp4
    adb shell screenrecord $filename &
    echo "Recording... Ctrl-C to stop recording"
    set record_pid \%last
    trap 'kill $record_pid' SIGINT
    while kill -0 $record_pid > /dev/null 2>&1;
        wait $record_pid
        sleep 2
        adb pull $filename
    end
end
