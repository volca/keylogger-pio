### How to use

* Install [Platformio CORE](https://docs.platformio.org/en/latest/core/index.html)
* Download source [EvilCrow-Keylogger](https://github.com/joelsernamoreno/EvilCrow-Keylogger). Extract the source code and name it as EvilCrow-Keylogger. Put the directory in same level with keylogger-pio
* Wire [ESP Flasher](https://wiki.aprbrother.com/en/ESP_Flasher_Rev4.html) and Keylogger
* Open command line window. Change directory to `keylogger-pio`
* Run `flash.bat` or `./flash.sh` to program 32u4 and esp32-pico

### About The Sketches

Sketch | About
------------- | -------------
32u4-blank | Empty sketch for 32u4. You should program the sketch first if you want to program esp32 alone with external programmer
32u4 | Sketch for ATMega32U4 part of EvilCrow Keylogger
esp32 | Sketch for ESP32 part of EvilCrow Keylogger

