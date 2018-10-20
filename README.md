# avr-gcc setup for ATtiny 48

Example toolchain setup for attiny 48.

## Compiling

Run `make` which will use `avr-gcc` to create a `.hex` file:

> make

## Burning ROM

To download the .hex to the target IC:

1. Connect ISP programmer to PC (via USB)
2. Connect ISP programmer to target IC via ICSP 2x3 header
3. Run `make install`

## License

MIT
