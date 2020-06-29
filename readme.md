### How to use

* Install [Platformio CORE](https://docs.platformio.org/en/latest/core/index.html)
* Download source [EvilCrow-Keylogger](https://github.com/joelsernamoreno/EvilCrow-Keylogger). Extract the source code and name it as EvilCrow-Keylogger. Put the directory in same level with keylogger-pio
* Add jumper GPIO0 to GND for ESP32-PICO
* Open command line window. Change directory to `keylogger-pio`
* Run `flash.bat` or `./flash.sh` to program 32u4 and esp32-pico

### About The Sketches

Sketch | About
------------- | -------------
32u4-blank | Empty sketch for 32u4. You should program the sketch first if you want to program esp32 alone with external programmer
32u4 | Sketch for ATMega32U4 part of EvilCrow Keylogger
esp32 | Sketch for ESP32 part of EvilCrow Keylogger
programmer | Sketch for program ESP32 via ATMega32U4 directly

### How it works

* Atmega32U4 with Arduino Lilypad USB bootloader. It wires with ESP32-PICO by hardware serial port `Serial1`
* The scripts program the sketch `programmer` to ATMega32U4 first. 
* Modified [esptool.py from espressif](https://github.com/AprilBrother/esptool/tree/keylogger). Change `FLASH_WRITE_SIZE` and `ESP_RAM_BLOCK` to 256 bytes for match the buffer size of 32u4's serial port.
* Use 32u4'a vitual USB-CDC port to program ESP32 directly

