import serial
import sys
import serial.tools.list_ports
from time import sleep

def main():
    ports   = serial.tools.list_ports.comports()
    port    = -1

    for p in ports:
        if 'VID:PID=10C4:EA60' in p[2]:
            port = p[0]
            break

    if port == -1:
        print("Error: no port found")
        sys.exit(1)
        return

    print(port)
    sys.exit(0)

if __name__ == '__main__':
    main()
