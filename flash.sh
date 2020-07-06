#pio run -t upload -d 32u4-blank
#sleep 3
PORT=`python tools/flasher_detect.py`
if [ "$?" -eq "0" ]; then
    pio run -t upload --upload-port $PORT -d esp32
    sleep 3
    pio run -t upload -d 32u4
else
    echo "No CP2104 port found"
fi
