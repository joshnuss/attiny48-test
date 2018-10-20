CC=avr-gcc
OBJCOPY=avr-objcopy
MCU=attiny48

default: led.hex

led.o: led.c
	$(CC) -g -Os -mmcu=$(MCU) -o $@ -c $<

led.elf: led.o
	$(CC) -g -mmcu=$(MCU) -o $@ led.o

led.hex: led.elf
	$(OBJCOPY) -j .text -j .data -O ihex $< $@ 

clean:
	rm led.hex led.elf led.o
